require_relative './base_decorator'

class CapDecorator < BaseDecorator
  # Defines a method to override the correct_name from the BaseDecorator class
  # It takes the output of the parent method and capitalizes the first letter
  def correct_name
    super().capitalize
  end
end
