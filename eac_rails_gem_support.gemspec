# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

require 'eac_rails_gem_support/version'

Gem::Specification.new do |s|
  s.name        = 'eac_rails_gem_support'
  s.version     = EacRailsGemSupport::VERSION
  s.authors     = ['Put here the authors']
  s.summary     = 'Put here de description.'

  s.files = Dir['{lib}/**/*']

  s.add_dependency 'capybara'
  s.add_dependency 'eac_ruby_gem_support', '~> 0.3', '>= 0.3.3'
  s.add_dependency 'eac_ruby_utils', '~> 0.74'
  s.add_dependency 'factory_bot_rails'
  s.add_dependency 'rails', '~> 5.1.7'
  s.add_dependency 'rspec-rails'
  s.add_dependency 'sqlite3'
end
