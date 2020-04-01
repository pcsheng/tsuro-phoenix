# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tsuro_phoenix,
  ecto_repos: [TsuroPhoenix.Repo]

# Configures the endpoint
config :tsuro_phoenix, TsuroPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/0Oji9bKdpZjoZbuHcxZjtsVmXL0hrj3cBgvWELXn5r8yHGc9umOdT7uW8eDqd04",
  render_errors: [view: TsuroPhoenixWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TsuroPhoenix.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "XHm13E8X"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
