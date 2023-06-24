# frozen_string_literal: true

require File.expand_path('boot', __dir__)

require 'rails/all'

Bundler.require(*Rails.groups)

file = ::File.join(__dir__, 'application_before.rb')
require file if ::File.exist?(file)

module Dummy
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true if ::Rails.version < '5'
    config.active_record.sqlite3.represent_boolean_as_integer = true if ::Rails.version < '6'

    config.action_mailer.default_url_options = { host: 'dummyhost' }
  end
end

file = ::File.join(__dir__, 'application_after.rb')
require file if ::File.exist?(file)
