use Mix.Releases.Config, default_environment: :default

environment :default do
  set(dev_mode: false)
  set(include_erts: true)
  set(include_src: false)
  set(cookie: :dev)

  set(
    overlays: [
      {:template, "rel/templates/vm.args.eex", "releases/<%= release_version %>/vm.args"}
    ]
  )
end

release :sandbox_api do
  set(version: "0.1.0")
  set(applications: [:sandbox_api, :runtime_tools])
end

# release :web do
#   set(version: "0.1.0")
#   set(applications: [:sandbox_web, :runtime_tools])
# end
