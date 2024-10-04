# RspecTableFormatter

`RspecTableFormatter` is a customizable formatter for displaying RSpec test results in a table format with customizable headers, messages, and styles.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec_table_formatter'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rspec_table_formatter

## Usage

So to use the formatter 

```
rspec --format RspecTableFormatter
```

or if always want the formatter to be used, add the following to end of your `.rspec` file

```
--format RspecTableFormatter
```

## Configuration

You can configure `RspecTableFormatter` to display custom messages and headers for your test results. You can also set the table style using a hash.

To configure the formatter, use the `configure` method and pass in a block. In the block, you can customize the following options:

- `passed_message`: The message displayed for passed tests.
- `failed_message`: The message displayed for failed tests.
- `pending_message`: The message displayed for pending tests.
- `test_case_header`: The header for the test case column.
- `expected_result_header`: The header for the expected result column.
- `status_header`: The header for the status column.
- `table_style`: A hash defining the table style.

### Example:

```ruby
# Configuration example
RspecTableFormatter.configure do |config|
  # Customize status messages
  config.passed_message = '✔️  Test Passed'
  config.failed_message = '❌ Test Failed'
  config.pending_message = '⚠️ Test Pending'

  # Customize table headers
  config.test_case_header = 'Test Description'
  config.expected_result_header = 'Expected Outcome'
  config.status_header = 'Test Status'

  # Customize table style
  config.table_style = { border_left: true, border_right: true, border: :ascii }
end
```

#### Table Style
We use [terminal-table](https://github.com/tj/terminal-table) to render the table. 
Any of the styles supported by `terminal-table` can be used.


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rspec_table_formatter. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/rspec_table_formatter/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RspecTableFormatter project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/nijeesh4all/rspec_table_formatter/blob/master/CODE_OF_CONDUCT.md).
