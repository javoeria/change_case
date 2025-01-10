# frozen_string_literal: true

require_relative "lib/change_case/version"

Gem::Specification.new do |spec|
  spec.name = "change_case"
  spec.version = ChangeCase::VERSION
  spec.authors = ["Javier Rosales"]
  spec.email = ["javier.rb_96@hotmail.com"]

  spec.summary = "Transform a string between camelCase, PascalCase, Capital Case, snake_case, kebab-case, CONSTANT_CASE and others."
  spec.homepage = "https://github.com/javoeria/change_case"
  spec.license = "MIT"
  spec.files = Dir["lib/**/*.rb"]
end
