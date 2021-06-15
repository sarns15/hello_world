# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hello_world,
  ecto_repos: [HelloWorld.Repo]

# Configures the endpoint
config :hello_world, HelloWorldWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EL4rD8JU5olTaYpfuCepC53xV61vs3r2J9tsSDNvDCuLu6+LHTm9w3NBaElBu+de",
  render_errors: [view: HelloWorldWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: HelloWorld.PubSub,
  live_view: [signing_salt: "mxtl4lNc"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
