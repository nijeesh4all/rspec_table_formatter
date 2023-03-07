# frozen_string_literal: true

require 'terminal-table'

# converts the examples array to a table string
class TableBuilder
  def initialize(examples)
    @examples = examples
  end

  def generate_table
    Terminal::Table.new do |t|
      t.headings = ['Test Case', 'Expected result', 'status']
      t.rows = map_examples(@examples)
      t.style = { border_left: false, border_right: false, border: :markdown }
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
      '✔️  Passed'
    when :failed
      '❌ Failed'
    when :pending
      '⚠️ Test case pending'
    else
      ''
    end
  end
end
