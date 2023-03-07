require_relative './nameable'

class BaseDecorator < Nameable
  # initialized the base decorator with a nameable variable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  # Defines a correct_name method which returns the name attribute
  def correct_name
    @nameable.correct_name
  end
end

