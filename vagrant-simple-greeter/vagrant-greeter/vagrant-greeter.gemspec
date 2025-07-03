Gem::Specification.new do |s|
  s.name        = "vagrant-greeter"
  s.version     = "0.1.0"
  s.authors     = ["Than Htut"]
  s.email       = ["you@example.com"]
  s.summary     = "Greets the user via a custom Vagrant command."
  s.description = "Adds a `greet` command to Vagrant."
  s.files       = Dir["lib/**/*.rb"]
  s.require_paths = ["lib"]
  s.add_dependency "vagrant", ">= 2.0.0"
end
