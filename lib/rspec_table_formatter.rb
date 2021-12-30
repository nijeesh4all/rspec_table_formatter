# frozen_string_literal: true

require 'rspec_table_formatter/version'

# main class for formatter
class RspecTableFormatter
  class Error < StandardError; end

  RSpec::Core::Formatters.register self, :dump_summary

  def initialize(output)
    @output = output
  end

  def dump_summary(notification)
    examples = notification.examples
    @output << TableBuilder.new(examples).generate_table.to_s + "\n"
  end
end
