# frozen_string_literal: true

require_relative "change_case/version"
require_relative "change_case/string"

# Module used for converting strings to any case.
module ChangeCase
  # Converts the string to camel case.
  def self.camel(input)
    split_string(input).map.with_index { |word, i| i.zero? ? word : word.capitalize }.join
  end

  # Converts the string to capital case.
  def self.capital(input)
    split_string(input).map(&:capitalize).join(" ")
  end

  # Converts the string to constant case.
  def self.constant(input)
    split_string(input).join("_").upcase
  end

  # Converts the string to dot case.
  def self.dot(input)
    split_string(input).join(".")
  end

  # Converts the string to kebab/param case.
  def self.kebab(input)
    split_string(input).join("-")
  end

  # Converts the string to space separated lowercase.
  def self.no(input)
    split_string(input).join(" ")
  end

  # Converts the string to pascal case.
  def self.pascal(input)
    split_string(input).map(&:capitalize).join
  end

  # Converts the string to pascal snake case.
  def self.pascal_snake(input)
    split_string(input).map(&:capitalize).join("_")
  end

  # Converts the string to path case.
  def self.path(input)
    split_string(input).join("/")
  end

  # Converts the string to sentence case.
  def self.sentence(input)
    split_string(input).join(" ").capitalize
  end

  # Converts the string to snake case.
  def self.snake(input)
    split_string(input).join("_")
  end

  # Converts the string to train/header case.
  def self.train(input)
    split_string(input).map(&:capitalize).join("-")
  end

  # Converts the string to title case.
  def self.title(input)
    small_words = %w[a an and as at because but by en for if in neither nor of on or only over per so some that than the to up upon vs versus via when with without yet]
    split_string(input).map.with_index { |word, i| small_words.include?(word) && i.positive? ? word : word.capitalize }.join(" ")
  end

  # Converts the string with uppercase characters to lowercase and vice versa.
  def self.swap(input)
    input.swapcase
  end

  # Converts the string with random capitalization applied.
  def self.sponge(input)
    input.chars.map { |char| rand(2).zero? ? char.downcase : char.upcase }.join
  end

  # Converts the first character in the string to uppercase.
  def self.upper_first(input)
    input.empty? ? "" : input[0].upcase.concat(input[1..])
  end

  # Converts the first character in the string to lowercase.
  def self.lower_first(input)
    input.empty? ? "" : input[0].downcase.concat(input[1..])
  end

  # Returns +true+ if the string is uppercase only.
  def self.upper?(input)
    input == input.upcase
  end

  # Returns +true+ if the string is lowercase only.
  def self.lower?(input)
    input == input.downcase
  end

  private_class_method def self.split_string(input)
    input.to_s.strip.gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2').gsub(/([a-z0-9])([A-Z])/, '\1_\2')
         .downcase.split(/[^a-z0-9']+/).reject(&:empty?)
  end
end
