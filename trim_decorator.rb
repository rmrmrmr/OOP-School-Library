require_relative './base_decorator'

class TrimDecorator < BaseDecorator
  # Defines a method to override the correct_name from the BaseDecorator class
  # It takes the output of the parent method and checks its lenght
  # If lenght is greater than 10, it returns the first 10 characters. Otherwise it returns the whole string
  def correct_name
    super().length > 10 ? super()[0..9] : super()
  end
end