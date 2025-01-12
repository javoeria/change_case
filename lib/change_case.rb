# frozen_string_literal: true

require_relative "change_case/version"

module ChangeCase
  def self.camel(input)
    split_string(input).map.with_index { |word, i| i.zero? ? word : word.capitalize }.join
  end

  def self.capital(input)
    split_string(input).map(&:capitalize).join(" ")
  end

  def self.constant(input)
    split_string(input).join("_").upcase
  end

  def self.dot(input)
    split_string(input).join(".")
  end

  def self.kebab(input)
    split_string(input).join("-")
  end

  def self.no(input)
    split_string(input).join(" ")
  end

  def self.pascal(input)
    split_string(input).map(&:capitalize).join
  end

  def self.pascal_snake(input)
    split_string(input).map(&:capitalize).join("_")
  end

  def self.path(input)
    split_string(input).join("/")
  end

  def self.sentence(input)
    split_string(input).join(" ").capitalize
  end

  def self.snake(input)
    split_string(input).join("_")
  end

  def self.train(input)
    split_string(input).map(&:capitalize).join("-")
  end

  def self.title(input)
    small_words = %w[a an and as at because but by en for if in neither nor of on or only over per so some that than the to up upon vs versus via when with without yet]
    split_string(input).map.with_index { |word, i| small_words.include?(word) && i.positive? ? word : word.capitalize }.join(" ")
  end

  def self.swap(input)
    input.swapcase
  end

  def self.sponge(input)
    input.chars.map { |char| rand(2).zero? ? char.downcase : char.upcase }.join
  end

  def self.upper_first(input)
    input.empty? ? "" : input[0].upcase.concat(input[1..])
  end

  def self.lower_first(input)
    input.empty? ? "" : input[0].downcase.concat(input[1..])
  end

  def self.upper?(input)
    input == input.upcase
  end

  def self.lower?(input)
    input == input.downcase
  end

  private_class_method def self.split_string(input)
    input.to_s.strip.gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2').gsub(/([a-z0-9])([A-Z])/, '\1_\2')
         .downcase.split(/[^a-z0-9']+/).reject(&:empty?)
  end
end
