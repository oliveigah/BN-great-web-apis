# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bn_great_web_apis,
  ecto_repos: [BnGreatWebApis.Repo]

# Configures the endpoint
config :bn_great_web_apis, BnGreatWebApisWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3V8NUBntoHb7ddzuOhMVkRSMBL6QEzqyAt6W8mH9DmeTnA26qt+b6xhAAhRjxkZx",
  render_errors: [view: BnGreatWebApisWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: BnGreatWebApis.PubSub,
  live_view: [signing_salt: "U2xrYw47"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
