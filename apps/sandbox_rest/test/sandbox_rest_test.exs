defmodule SandboxRestTest do
  use ExUnit.Case
  doctest SandboxRest

  test "greets the world" do
    assert SandboxRest.hello() == :world
  end
end
