# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_view_todos,
  ecto_repos: [LiveViewTodos.Repo]

# Configures the endpoint
config :live_view_todos, LiveViewTodosWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3oBX5LmYWz6jHZimo1BAuk7lr2SAA9rO/6x+YZnc9wffu8Hrx3V/tY6WKv5Jyjza",
  render_errors: [view: LiveViewTodosWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [
    name: LiveViewTodos.PubSub,
    adapter: Phoenix.PubSub.Redis,
    host: "localhost", port: 6379,
    node_name: System.get_env("NODE")
  ],
  live_view: [
    signing_salt: "g28QTPcQw0OzkYgiWcDAel7EsohoMOrriLDaHmtqJDLwiLFYCecdYI5PCFtObZtN"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
