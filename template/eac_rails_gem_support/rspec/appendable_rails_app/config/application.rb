# frozen_string_literal: true

require File.expand_path('boot', __dir__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Dummy
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true if ::Rails.version < '5'

    config.action_mailer.default_url_options = { host: 'dummyhost' }
  end
end
