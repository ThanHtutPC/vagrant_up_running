require "optparse"
require_relative "errors"

module VagrantPlugins
  module Greeter
    class Command < Vagrant.plugin("2", :command)
      def execute
        options = {}

        opts = OptionParser.new do |o|
          o.banner = "Usage: vagrant greet --name NAME"
          o.on("--name NAME", "Name to greet") do |n|
            options[:name] = n
          end
        end

        argv = parse_options(opts)
        return unless argv

        if options[:name].nil? || options[:name].strip.empty?
          raise Errors::MissingNameError
        end

        @env.ui.info("Hello, #{options[:name]}!")
        0
      end
    end
  end
end