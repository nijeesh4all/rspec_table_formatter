# frozen_string_literal: true

require 'terminal-table'

# converts the examples array to a table string
class TableBuilder
  def initialize(examples, configs)
    @examples = examples
    @configs = configs
  end

  def generate_table
    Terminal::Table.new do |t|
      t.headings = @configs.headers
      t.rows = map_examples(@examples)
      t.style = @configs.table_style
    end
  end

  protected

  def map_examples(examples)
    examples.map { |example| map_example(example) }
  end

  def map_example(example)
    [
      example.metadata[:example_group][:full_description],
      example.description,
      execution_status(example)
    ]
  end

  def execution_status(example)
    case example.execution_result.status
    when :passed
      @configs.passed_message
    when :failed
      @configs.failed_message
    when :pending
      @configs.pending_message
    else
      ''
    end
  end
end
