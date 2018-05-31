defmodule SandboxCore.Users.User do
  @moduledoc false

  use Ecto.Schema

  schema "users" do
    field(:email, :string)
  end
end
