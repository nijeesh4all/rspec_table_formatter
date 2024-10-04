module RspecTableFormatter
  class Configurations

    attr_accessor :passed_message, :failed_message, :pending_message,
                  :test_case_header, :expected_result_header, :status_header,
                  :table_style

    def initialize
      # messages to be displayed in the status column
      @passed_message = '✔️  Passed'
      @failed_message = '❌ Failed'
      @pending_message = '⚠️ Test case pending'

      # headers for the table
      @test_case_header = 'Test Case'
      @expected_result_header = 'Expected result'
      @status_header = 'Status'

      # table style
      @table_style = { border_left: false, border_right: false, border: :markdown }
    end

    def headers
      [@test_case_header, @expected_result_header, @status_header]
    end
  end
end
