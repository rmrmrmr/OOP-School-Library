require_relative './base_decorator'

class CapDecorator < BaseDecorator
  def correct_name
    super().capitalize
  end
end
