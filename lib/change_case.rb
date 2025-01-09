# frozen_string_literal: true

require_relative "change_case/version"

module ChangeCase
  def self.camel(input)
    underscore(input).split(/[^a-z0-9]+/).map.with_index { |word, i| i.zero? ? word : word.capitalize }.join
  end

  def self.capital(input)
    underscore(input).split(/[^a-z0-9]+/).map(&:capitalize).join(" ")
  end

  def self.constant(input)
    underscore(input).gsub(/[^a-z0-9]+/, "_").upcase
  end

  def self.dot(input)
    underscore(input).gsub(/[^a-z0-9]+/, ".")
  end

  def self.kebab(input)
    underscore(input).gsub(/[^a-z0-9]+/, "-")
  end

  def self.no(input)
    underscore(input).gsub(/[^a-z0-9]+/, " ")
  end

  def self.pascal(input)
    underscore(input).split(/[^a-z0-9]+/).map(&:capitalize).join
  end

  def self.path(input)
    underscore(input).gsub(/[^a-z0-9]+/, "/")
  end

  def self.sentence(input)
    underscore(input).gsub(/[^a-z0-9]+/, " ").capitalize
  end

  def self.snake(input)
    underscore(input).gsub(/[^a-z0-9]+/, "_")
  end

  def self.train(input)
    underscore(input).split(/[^a-z0-9]+/).map(&:capitalize).join("-")
  end

  private_class_method def self.underscore(input)
    input.to_s.strip.gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2').gsub(/([a-z0-9])([A-Z])/, '\1_\2').downcase
  end
end
