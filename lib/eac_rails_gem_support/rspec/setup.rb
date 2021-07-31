# frozen_string_literal: true

require 'eac_ruby_utils/core_ext'

module EacRailsGemSupport
  module Rspec
    class Setup
      require_sub __FILE__, include_modules: true
      common_constructor :setup_obj

      def perform
        setup_rails_env
        return unless setup_rails_app

        setup_fixtures
        setup_capybara
        setup_factory_bot
      end

      private

      # @return [Pathname]
      def rails_app_path
        [
          setup_obj.app_root_path,
          setup_obj.app_root_path.join('spec', 'support', 'rails_app')
        ].find { |app_path| app_path.join('config', 'environment.rb').file? }
      end

      def fixtures_path
        [
          setup_obj.app_root_path.join('spec', 'fixtures'),
          setup_obj.app_root_path.join('test', 'fixtures')
        ].find(&:directory?)
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

      def setup_fixtures
        setup_obj.rspec_config.use_transactional_fixtures = true
        fixtures_path.if_present do |v|
          setup_obj.rspec_config.fixture_path = v
        end
      end

      def setup_rails_env
        ENV['RAILS_ENV'] ||= 'test'
      end
    end
  end
end
