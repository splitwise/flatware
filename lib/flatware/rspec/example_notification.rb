require 'rspec/core/formatters/console_codes'

module Flatware
  module RSpec
    class ExampleNotification
      attr_reader :formatted
      def initialize(notification)
        @formatted = notification.fully_formatted '!', default_colorizer
      end

      def fully_formatted(i, _=nil)
        formatted.sub '!', i.to_s
      end

      private
      def default_colorizer
        ::RSpec::Core::Formatters::ConsoleCodes
      end
    end
  end
end
