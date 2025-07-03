module VagrantPlugins
  module Greeter
    module Errors
      class MissingNameError < Vagrant::Errors::VagrantError
        error_key(:missing_name)
      end
    end
  end
end