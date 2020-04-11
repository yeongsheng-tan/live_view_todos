use Mix.Config

# Configure your database
config :live_view_todos, LiveViewTodos.Repo,
  username: "postgres",
  password: "postgres",
  database: "live_view_todos_test",
  hostname: "localhost",
  port: System.get_env("DB_PORT") || 5432,
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :live_view_todos, LiveViewTodosWeb.Endpoint,
  http: [port: System.get_env("PHX_PORT") || 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
