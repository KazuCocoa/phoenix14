# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix14,
  ecto_repos: [Phoenix14.Repo]

# Configures the endpoint
config :phoenix14, Phoenix14Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cWtT+bIwRPyyhtosGnaDxn5ZJsZIGd2hqCiWOK1tnXnP4hHfTHhvadyZ5pV0I8+3",
  render_errors: [view: Phoenix14Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phoenix14.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
