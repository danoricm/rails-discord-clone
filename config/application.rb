require_relative "boot"
require "rails/all"
require 'devise' # Add this line to require Devise

Bundler.require(*Rails.groups)

module RailsDiscordClone
  class Application < Rails::Application
    config.load_defaults 7.1
    config.autoload_lib(ignore: %w(assets tasks))
  end
end