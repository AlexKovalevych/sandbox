defmodule SandboxCoreTest do
  use ExUnit.Case
  doctest SandboxCore

  test "greets the world" do
    assert SandboxCore.hello() == :world
  end
end
