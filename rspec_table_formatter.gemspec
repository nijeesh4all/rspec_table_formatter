# frozen_string_literal: true

require_relative 'lib/rspec_table_formatter/version'

Gem::Specification.new do |spec|
  spec.name          = 'rspec_table_formatter'
  spec.version       = RspecTableFormatter::VERSION
  spec.authors       = ['Nijeesh']
  spec.email         = ['nijeesh.k@rently.com']

  spec.summary       = 'a simple table formatter for rspec'
  spec.description   = 'a simple gem to output the rspec run summery in markdown table format'\
                        'so you can copy paste the content to any documentation of your choice'
  spec.homepage      = 'https://github.com/nijeesh-rently/rspec_table_formatter'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = 'https://rubygems.pkg.github.com/nijeesh-rently'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/nijeesh-rently/rspec_table_formatter'
  spec.metadata['changelog_uri'] = 'https://github.com/nijeesh-rently/rspec_table_formatter'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
