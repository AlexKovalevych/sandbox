defmodule SandboxRest.MixProject do
  use Mix.Project

  def project do
    [
      app: :sandbox_rest,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {SandboxRest.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:sandbox_core, in_umbrella: true}
    ]
  end

  defp aliases do
    [
      "ecto.setup": &ecto_setup/1
    ]
  end

  defp ecto_setup(_) do
    Mix.shell().cmd("cd ../sandbox_core && mix ecto.setup")
  end
end
