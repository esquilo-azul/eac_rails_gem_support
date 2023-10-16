# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

require 'eac_rails_gem_support/version'

Gem::Specification.new do |s|
  s.name        = 'eac_rails_gem_support'
  s.version     = EacRailsGemSupport::VERSION
  s.authors     = ['Put here the authors']
  s.summary     = 'Put here de description.'

  s.files = Dir['{lib,template}/**/*', '.rubocop.yml']

  s.add_dependency 'avm-eac_ruby_base1', '~> 0.31', '>= 0.31.2'
  s.add_dependency 'capybara', '~> 3.39', '>= 3.39.2'
  s.add_dependency 'eac_ruby_gem_support', '~> 0.8.1'
  s.add_dependency 'eac_ruby_utils', '~> 0.119', '>= 0.119.2'
  s.add_dependency 'eac_templates', '~> 0.5'
  s.add_dependency 'factory_bot_rails', '~> 6.2'
  s.add_dependency 'rails', '>= 5.2.8.1', '< 7'
  s.add_dependency 'rspec-rails', '~> 5.1', '>= 5.1.2'
  s.add_dependency 'sqlite3', '~> 1.6', '>= 1.6.7'
end
