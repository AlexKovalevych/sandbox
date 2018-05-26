defmodule SandboxApi.Router do
  @moduledoc false

  use SandboxApi.Web, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", SandboxApi do
    pipe_through(:api)
  end
end
