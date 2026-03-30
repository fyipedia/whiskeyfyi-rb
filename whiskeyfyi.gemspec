# frozen_string_literal: true

require_relative "lib/whiskeyfyi/version"

Gem::Specification.new do |s|
  s.name        = "whiskeyfyi"
  s.version     = WhiskeyFYI::VERSION
  s.summary     = "Whiskey encyclopedia with expressions, distilleries, and regions"
  s.description = "API client for whiskeyfyi.com. Whiskey encyclopedia with expressions, distilleries, and regions. Zero dependencies."
  s.authors     = ["FYIPedia"]
  s.email       = ["hello@fyipedia.com"]
  s.homepage    = "https://whiskeyfyi.com"
  s.license     = "MIT"
  s.required_ruby_version = ">= 3.0"

  s.files = Dir["lib/**/*.rb"]

  s.metadata = {
    "homepage_uri"      => "https://whiskeyfyi.com",
    "source_code_uri"   => "https://github.com/fyipedia/whiskeyfyi-rb",
    "changelog_uri"     => "https://github.com/fyipedia/whiskeyfyi-rb/blob/main/CHANGELOG.md",
    "documentation_uri" => "https://whiskeyfyi.com/developers/",
    "bug_tracker_uri"   => "https://github.com/fyipedia/whiskeyfyi-rb/issues",
  }
end
