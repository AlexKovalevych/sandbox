defmodule SandboxCore.UsersTest do
  use SandboxCore.DataCase
  alias SandboxCore.Users

  describe "create user" do
    test "success create user" do
      assert {:ok, user} = Users.create(%{"email" => "test@example.local"})
    end
  end
end
