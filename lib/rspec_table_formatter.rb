# frozen_string_literal: true

require 'rspec_table_formatter/version'

require_relative './table_builder'
require_relative './rspec_table_formatter/configurations'

# main class for formatter
class RspecTableFormatter
  class Error < StandardError; end

  @configs = Configurations.new

  RSpec::Core::Formatters.register self, :dump_summary

  def initialize(output)
    @output = output
  end

  def dump_summary(notification)
    examples = notification.examples
    @output << TableBuilder.new(examples, @configs).generate_table.to_s + "\n"
  end

  class << self
    def configure
      yield @configs if block_given?
    end
  end
end
