# frozen_string_literal: true

module EacRailsGemSupport
  module Rspec
    module Setup
      module Fixtures
        def fixtures_path
          [
            app_root_path.join('spec', 'fixtures'),
            app_root_path.join('test', 'fixtures')
          ].find(&:directory?)
        end

        def setup_fixtures
          rspec_config.use_transactional_fixtures = true
          fixtures_path.if_present do |v|
            rspec_config.fixture_path = v
          end
        end
      end
    end
  end
end
