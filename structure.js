const page = {
  title: "Landing page",
  meta: "this is meta tags",
  scripts: [],
  styles: [],
  components: [
    {
      name: "header",
      label: "page header",
      fields: [
        {
          name: "logo",
          label: "logo",
          default: "/images/phoenix.png",
          type: "image", // text | image | link | html | container
          props: {
            href: "http://google.com",
          },
        },
        {
          name: "header_menu",
          type: "html", // text | image | link | html
          default:
            '<nav role="navigation">\r\n          <ul>\r\n            <li><a href="https://hexdocs.pm/phoenix/overview.html">Get Started</a></li>\r\n              <li><a href="/dashboard">LiveDashboard</a></li>\r\n          </ul>\r\n        </nav>',
        },
      ],
    },
    {
      name: "hero",
      label: "hero",
      fields: [
        {
          name: "title",
          default: "Welcome to Phoenix!",
          type: "text", // text | image | link | html | container
        },
        {
          name: "sub_title",
          default: "Peace of mind from prototype to production",
          type: "text", // text | image | link | html | container
        },
      ],
    },
    {
      name: "resources",
      fields: [
        {
          name: "docs",
          default: "Guides & Docs",
          type: "link", // text | image | link | html | container
          props: {
            href: "#",
          },
        },
        {
          name: "source",
          default: "Source",
          type: "link", // text | image | link | html | container
          props: {
            href: "#",
          },
        },
        {
          name: "changelog",
          default: "Changelogs",
          type: "link", // text | image | link | html | container
          props: {
            href: "#",
          },
        },
      ],
    },
    {
      name: "helps",
      fields: [
        {
          name: "forum",
          default: "Forum",
          type: "link", // text | image | link | html | container
          props: {
            href: "#",
          },
        },
        {
          name: "twitter",
          default: " Twitter @elixirphoenix",
          type: "link", // text | image | link | html | container
          props: {
            href: "#",
          },
        },
        {
          name: "slack",
          default: "Elixir on Slack",
          type: "link", // text | image | link | html | container
          props: {
            href: "#",
          },
        },
      ],
    },
  ],
};
