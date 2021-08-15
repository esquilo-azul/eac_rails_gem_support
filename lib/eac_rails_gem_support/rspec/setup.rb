# frozen_string_literal: true

require 'eac_ruby_utils/core_ext'

module EacRailsGemSupport
  module Rspec
    module Setup
      extend ::ActiveSupport::Concern
      require_sub __FILE__, include_modules: true

      def self.extended(obj)
        obj.setup_rails_env
        return unless obj.setup_rails_app

        obj.setup_fixtures
        obj.setup_capybara
        obj.setup_factory_bot
      end

      # @return [Pathname]
      def rails_app_path
        [
          app_root_path,
          app_root_path.join('spec', 'support', 'rails_app')
        ].find { |app_path| app_path.join('config', 'environment.rb').file? }
      end

      def setup_rails_app
        return false unless rails_app_path

        require rails_app_path.join('config', 'environment').to_path
        ::ActiveRecord::Migrator.migrations_paths = [rails_app_path.join('db', 'migrate')]
        raise('The Rails environment is running in production mode!') if Rails.env.production?

        require 'rspec/rails'
        ::ActiveRecord::Migration.maintain_test_schema!
        true
      end

      def setup_rails_env
        ENV['RAILS_ENV'] ||= 'test'
      end
    end
  end
end
