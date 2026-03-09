# frozen_string_literal: true

require 'eac_ruby_utils'
EacRubyUtils::RootModuleSetup.perform __FILE__ do
  ignore 'rspec/shared_examples/**/*'
end

module EacRailsGemSupport
end

require 'avm/eac_ruby_base1'
require 'capybara'
require 'eac_ruby_gem_support'
require 'eac_templates'
require 'factory_bot_rails'
