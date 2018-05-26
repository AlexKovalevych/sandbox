defmodule SandboxApi.Web do
  def controller do
    quote do
      use Phoenix.Controller

      import SandboxApi.Router.Helpers
    end
  end

  def view do
    quote do
      use Phoenix.View, root: ""
    end
  end

  def router do
    quote do
      use Phoenix.Router
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
