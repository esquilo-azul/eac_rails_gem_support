# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

require 'eac_rails_gem_support/version'

Gem::Specification.new do |s|
  s.name        = 'eac_rails_gem_support'
  s.version     = EacRailsGemSupport::VERSION
  s.authors     = ['Put here the authors']
  s.summary     = 'Put here de description.'

  s.files = Dir['{lib,template}/**/*', '.rubocop.yml']

  s.required_ruby_version = '>= 2.7.0'

  s.add_dependency 'avm-eac_ruby_base1', '~> 0.36'
  s.add_dependency 'capybara', '~> 3.39', '>= 3.39.2'
  s.add_dependency 'concurrent-ruby', '1.3.4' # https://stackoverflow.com/a/79361034
  s.add_dependency 'eac_ruby_gem_support', '~> 0.12'
  s.add_dependency 'eac_ruby_utils', '~> 0.128'
  s.add_dependency 'eac_templates', '~> 0.8', '>= 0.8.1'
  s.add_dependency 'factory_bot_rails', '~> 6.4', '>= 6.4.3'
  s.add_dependency 'launchy', '~> 2.5', '>= 2.5.2'
  s.add_dependency 'letter_opener', '~> 1.10'
  s.add_dependency 'rails', '>= 5.2.8.1', '< 7'
  s.add_dependency 'rspec-rails', '~> 5.1', '>= 5.1.2'
  s.add_dependency 'sqlite3', '~> 1.7', '>= 1.7.3'
end
