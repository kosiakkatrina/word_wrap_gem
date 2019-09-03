lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "word_wrap_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "word_wrap_gem"
  spec.version       = WordWrapGem::VERSION
  spec.authors       = ["Kat"]
  spec.email         = ["katrina@madetech.com"]

  spec.summary       = "This gem wraps words to the next line based on the column lengthman rak"
  spec.homepage      = "https://github.com/kosiakkatrina/word_wrap_gem"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = 'http://mygemserver.com'

  spec.metadata["homepage_uri"] = "https://github.com/kosiakkatrina/word_wrap_gem"
  spec.metadata["source_code_uri"] = "https://github.com/kosiakkatrina/word_wrap_gem"
  spec.metadata["changelog_uri"] = "https://github.com/kosiakkatrina/word_wrap_gem/blob/master/word_wrap_gem/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
