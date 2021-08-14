# frozen_string_literal: true

require 'eac_ruby_utils/core_ext'

module EacRailsGemSupport
  module Rspec
    module Setup
      module FactoryBot
        def setup_factory_bot
          require 'factory_bot_rails'
          rspec_config.include ::FactoryBot::Syntax::Methods
          Spring.after_fork { ::FactoryBot.reload } if defined?(Spring)
        end
      end
    end
  end
end
