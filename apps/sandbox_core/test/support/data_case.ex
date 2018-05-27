defmodule SandboxCore.DataCase do
  use ExUnit.CaseTemplate

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(SandboxCore.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(SandboxCore.Repo, {:shared, self()})
    end

    :ok
  end
end
