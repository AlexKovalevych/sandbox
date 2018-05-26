defmodule SandboxApiTest do
  use ExUnit.Case
  doctest SandboxApi

  test "greets the world" do
    assert SandboxApi.hello() == :world
  end
end
