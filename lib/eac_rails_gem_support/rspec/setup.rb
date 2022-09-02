# frozen_string_literal: true

require 'eac_rails_gem_support/rspec/minitest_support'
require 'eac_ruby_utils/core_ext'

module EacRailsGemSupport
  module Rspec
    module Setup
      extend ::ActiveSupport::Concern
      require_sub __FILE__, include_modules: true

      def self.extended(obj)
        obj.setup_minitest_support
        obj.singleton_class.include(::EacRubyUtils::SimpleCache)
        obj.setup_rails_env
        return unless obj.setup_rails_app

        %w[fixtures capybara factory_bot].each do |item|
          obj.send("setup_#{item}")
        end
      end

      def setup_minitest_support
        rspec_config.include ::EacRailsGemSupport::Rspec::MinitestSupport
      end
    end
  end
end
