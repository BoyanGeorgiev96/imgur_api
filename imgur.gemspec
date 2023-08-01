# frozen_string_literal: true

require_relative "lib/imgur/version"

Gem::Specification.new do |spec|
  spec.name = "imgur"
  spec.version = Imgur::VERSION
  spec.authors = ["Boyan Georgiev"]
  spec.email = ["bbgeorgiev96@gmail.com"]

  spec.summary = "Unofficial Ruby wrapper for the Imgur API"
  spec.homepage = "https://github.com/BoyanGeorgiev96/imgur_api"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/BoyanGeorgiev96/imgur_api"
  spec.metadata["changelog_uri"] = "https://github.com/BoyanGeorgiev96/imgur_api/blob/main/CHANGELOG.md"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 2.7"
end
