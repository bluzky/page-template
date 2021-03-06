defmodule Sample do
    def json do
        %{
            "title" => "Landing page",
            "meta" => "this is meta tags",
            "scripts" => [],
            "styles" => [],
            "components" => [
              %{
                "name" => "header",
                "label" => "page header",
                "fields" => %{
                  "logo" => %{
                    "value" => "/images/phoenix.png"
                  },
                  "header_menu" => %{
                    "value" => "<nav role=\"navigation\"><ul><li><a href=\"https =>//hexdocs.pm/phoenix/overview.html\">Get Starteing</a></li><li><a href=\"/dashboard\">LiveDashboard</a></li></ul></nav>"
                  }
                }
              },
          
              %{
                "name" => "hero",
                "label" => "hero",
                "fields" => %{
                  "title" => %{ "value" => "Welcome to Phoenix!" },
                  "sub_title" => %{
                    "value" => "Peace of mind from prototype to production"
                  }
                }
              },
              %{
                "name" => "resources",
                "fields" => %{
                  "docs" => %{
                    "default" => "Guides & Docs",
                    "href" => "#"
                  },
                  "source" => %{
                    "default" => "Source",
                    "href" => "#"
                  },
                  "changelog" => %{
                    "default" => "Changelogs",
                    "href" => "#"
                  }
                }
              },
              %{
                "name" => "helps",
                "fields" => %{
                  "forum" => %{
                    "default" => "Forum",
                    "href" => "#"
                  },
                  "twitter" => %{
                    "default" => " Twitter @elixirphoenix",
                    "href" => "#"
                  },
                  "slack" => %{
                    "default" => "Elixir on Slack",
                    "href" => "#"
                  }
                }
              }
            ]
          }
    end
    
end