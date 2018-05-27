use Mix.Config

config :sandbox_core, SandboxCore.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "sandbox_test",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  port: "5432",
  pool: Ecto.Adapters.SQL.Sandbox
