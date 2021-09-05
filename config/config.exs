# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :timeline_elixir,
  ecto_repos: [TimelineElixir.Repo]

# Configures the endpoint
config :timeline_elixir, TimelineElixirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rO3vVBaQORFtK+uUZ2U3Hc48eIyUbFSOvGG/6CsJVHXlhy9LfYaZ+FjoLW9IHZIT",
  render_errors: [view: TimelineElixirWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TimelineElixir.PubSub,
  live_view: [signing_salt: "MOvkg9+h"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
