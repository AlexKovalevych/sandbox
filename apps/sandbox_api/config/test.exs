use Mix.Config

config :ex_unit, capture_log: true

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :sandbox_api, SandboxApi.Endpoint,
  http: [port: 4001],
  server: true
