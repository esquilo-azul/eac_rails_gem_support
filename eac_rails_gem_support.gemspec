# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

require 'eac_rails_gem_support/version'

Gem::Specification.new do |s|
  s.name        = 'eac_rails_gem_support'
  s.version     = EacRailsGemSupport::VERSION
  s.authors     = ['Put here the authors']
  s.summary     = 'Put here de description.'

  s.files = Dir['{lib,template}/**/*']

  s.add_dependency 'avm-eac_ruby_base1', '~> 0.8'
  s.add_dependency 'capybara'
  s.add_dependency 'eac_ruby_gem_support', '~> 0.5.1'
  s.add_dependency 'eac_ruby_utils', '~> 0.95', '>= 0.95.1'
  s.add_dependency 'eac_templates', '~> 0.3', '>= 0.3.1'
  s.add_dependency 'factory_bot_rails'
  s.add_dependency 'rails', '~> 5.2.8'
  s.add_dependency 'rspec-rails'
  s.add_dependency 'sqlite3'
end
