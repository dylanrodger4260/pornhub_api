# frozen_string_literal: true

require_relative "lib/pornhub_api/version"

Gem::Specification.new do |spec|
  spec.name          = "pornhub_api"
  spec.version       = PornhubApi::VERSION
  spec.authors       = ["Kirill Bobykin"]
  spec.email         = ["qelphybox@gmail.com"]

  spec.summary       = "Pornhub API client"
  spec.description   = "Simple Pornhub API client"
  spec.homepage      = "https://github.com/qelphybox/pornhub_api"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  # spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/qelphybox/pornhub_api.git"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
