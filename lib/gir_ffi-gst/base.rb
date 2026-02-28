# frozen_string_literal: true

module GirFFIGst
  # Override init to automatically use ARGV as its argument.
  module AutoArgv
    def self.included(base)
      base.extend ClassMethods
      class << base
        alias_method :init_without_auto_argv, :init
        alias_method :init, :init_with_auto_argv
      end
    end

    # Implementation of class methods for AutoArgv
    module ClassMethods
      def init_with_auto_argv
        remaining = init_without_auto_argv([$PROGRAM_NAME, *ARGV]).to_a
        remaining.shift
        ARGV.replace remaining
      end
    end
  end
end
