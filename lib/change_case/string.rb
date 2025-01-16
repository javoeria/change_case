# frozen_string_literal: true

# Add ChangeCase methods on the String class by monkey patching.
class String
  # Converts the string to camel case.
  def camelcase
    ChangeCase.camel(self)
  end

  # Converts the string to capital case.
  def capitalcase
    ChangeCase.capital(self)
  end

  # Converts the string to constant case.
  def constantcase
    ChangeCase.constant(self)
  end

  # Converts the string to dot case.
  def dotcase
    ChangeCase.dot(self)
  end

  # Converts the string to kebab/param case.
  def kebabcase
    ChangeCase.kebab(self)
  end

  # Converts the string to space separated lowercase.
  def nocase
    ChangeCase.no(self)
  end

  # Converts the string to pascal case.
  def pascalcase(snake: false)
    snake ? ChangeCase.pascal_snake(self) : ChangeCase.pascal(self)
  end

  # Converts the string to path case.
  def pathcase
    ChangeCase.path(self)
  end

  # Converts the string to sentence case.
  def sentencecase
    ChangeCase.sentence(self)
  end

  # Converts the string to snake case.
  def snakecase
    ChangeCase.snake(self)
  end

  # Converts the string to train/header case.
  def traincase
    ChangeCase.train(self)
  end

  # Converts the string to title case.
  def titlecase
    ChangeCase.title(self)
  end

  # Converts the string with random capitalization applied.
  def spongecase
    ChangeCase.sponge(self)
  end
end
