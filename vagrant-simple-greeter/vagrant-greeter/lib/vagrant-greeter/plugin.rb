require "vagrant"
require_relative "command"
require_relative "errors"

module VagrantPlugins
  module Greeter
    class Plugin < Vagrant.plugin("2")
      name "greeter"
      description "A custom plugin that greets the user."

      command("greet") do
        Command
      end
    end
  end
end