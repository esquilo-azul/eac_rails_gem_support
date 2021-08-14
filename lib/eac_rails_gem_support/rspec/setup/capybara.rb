# frozen_string_literal: true

require 'eac_ruby_utils/core_ext'

module EacRailsGemSupport
  module Rspec
    module Setup
      module Capybara
        def setup_capybara
          require 'capybara/rspec'
          rspec_config.include ::Capybara::DSL, file_path: 'spec/requests'
        end
      end
    end
  end
end
