# frozen_string_literal: true

require 'eac_ruby_utils/core_ext'

module EacRailsGemSupport
  module Rspec
    class Setup
      module Capybara
        def setup_capybara
          require 'capybara/rspec'
          setup_obj.rspec_config.include ::Capybara::DSL, file_path: 'spec/requests'
        end
      end
    end
  end
end
