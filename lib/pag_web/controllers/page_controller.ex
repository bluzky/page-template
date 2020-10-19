defmodule PagWeb.PageController do
  use PagWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html", page: Sample.json())
  end
end
