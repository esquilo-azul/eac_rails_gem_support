# frozen_string_literal: true

require 'eac_rails_gem_support/patches/object/template'
require 'eac_ruby_gems_utils/gem'
require 'eac_ruby_utils/core_ext'
require 'fileutils'

module EacRailsGemSupport
  module Rspec
    class AppendableRailsApp
      enable_simple_cache
      common_constructor :gem_dir, :append_dir, :target_dir, default: [nil] do
        self.target_dir = ::EacRubyUtils::Fs::ClearableDirectory.new(
          (target_dir || ::Dir.mktmpdir).to_pathname
        )
        build
      end

      protected

      def build
        clear_target
        copy_app_base
        copy_append_directory
        database_migrate
      end

      def database_migrate
        the_gem.bundle('exec', 'rake', 'db:migrate').chdir(target_dir).execute!
      end

      def clear_target
        target_dir.clear
      end

      def copy_app_base
        template.apply(self, target_dir)
      end

      def copy_append_directory
        ::FileUtils.cp_r("#{append_dir}/.", target_dir)
      end

      def the_gem_uncached
        ::EacRubyGemsUtils::Gem.new(gem_dir)
      end
    end
  end
end
