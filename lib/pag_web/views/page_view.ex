defmodule PagWeb.PageView do
  use PagWeb, :view
  import Phoenix.HTML

  def component(id, data, fun) when is_function(fun, 3) do
    fun.(data, data["fields"], data["components"])
  end

  def get_item(list, name) do
    Enum.find(list, %{}, fn item ->
      item["name"] == name
    end)
  end

  def text_field(name, default, field, props \\ []) do
    props = Keyword.put(props, :default, default)
    content = field["value"] || default
    tag = props[:tag] || :p
    content_field(tag, name, :text, content, props)
  end

  def img_field(name, field, props \\ []) do
    props =
      props
      |> Keyword.put(:default, props[:src])
      |> Keyword.put(:src, field["value"] || props[:src])

    field(:img, name, :image, props)
  end

  def link_field(name) do
  end

  def html_field(name, field, do: default_block) do
    content =
      if field["value"] do
        raw(field["value"])
      else
        default_block
      end

    content_field(:div, name, :html, content)
  end

  def content_field(tag, name, type, content, props \\ []) do
    content = content || props[:default]

    x_props = [
      "x-type": type,
      "x-name": name,
      "x-default": props[:default],
      "x-label": props[:label]
    ]

    props =
      props
      |> Keyword.drop([:default, :label, :tag])
      |> Keyword.merge(x_props)

    content_tag(tag, content, props)
  end

  def field(tag, name, type, props \\ []) do
    x_props = [
      "x-type": type,
      "x-name": name,
      "x-default": props[:default],
      "x-label": props[:label],
      "x-editable-attrs": Enum.join(props[:editable_attrs] || [], ",")
    ]

    props =
      props
      |> Keyword.drop([:default, :label, :editable_attrs, :tag])
      |> Keyword.merge(x_props)

    tag(tag, props)
  end
end
