defmodule SandboxCore.Users do
  alias SandboxCore.Repo
  alias SandboxCore.Users.User

  import Ecto.Changeset

  @fields_required ~w(email)a

  def create(params) do
    %User{}
    |> changeset(params)
    |> Repo.insert()
  end

  defp changeset(%User{} = user, params) do
    user
    |> cast(params, @fields_required)
    |> validate_required(@fields_required)
  end
end
