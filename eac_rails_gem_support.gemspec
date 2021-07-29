# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

require 'eac_rails_gem_support/version'

Gem::Specification.new do |s|
  s.name        = 'eac_rails_gem_support'
  s.version     = EacRailsGemSupport::VERSION
  s.authors     = ['Put here the authors']
  s.summary     = 'Put here de description.'

  s.files = Dir['{lib}/**/*']

  s.add_dependency 'eac_ruby_gem_support', '~> 0.3'
  s.add_dependency 'eac_ruby_utils', '~> 0.71'
end
