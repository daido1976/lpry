require_relative 'lib/lpry/version'

Gem::Specification.new do |spec|
  spec.name          = 'lpry'
  spec.version       = Lpry::VERSION
  spec.authors       = ['daido1976']
  spec.email         = ['daido1976@gmail.com']

  spec.summary       = 'A light-weight pry'
  spec.description   = 'A light-weight pry'
  spec.homepage      = 'https://github.com/daido1976/lpry'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
