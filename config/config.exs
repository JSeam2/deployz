# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :deployz,
  ecto_repos: [Deployz.Repo]

# Configures the endpoint
config :deployz, DeployzWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nNaEWTXtOC4b7eB2u8lJOxOgiFEhnx20ACg55zLSJN7AekZREYjKicx2GuEiFry5",
  render_errors: [view: DeployzWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Deployz.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
