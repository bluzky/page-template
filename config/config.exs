# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :pag,
  ecto_repos: [Pag.Repo]

# Configures the endpoint
config :pag, PagWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UxVeTTxaQNJN5pCEyKzfpz/GnNow30ra2y6+Wg4Ec9VQL1OKEVPgjuOVFoYxTzWk",
  render_errors: [view: PagWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Pag.PubSub,
  live_view: [signing_salt: "ISIU8upu"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
