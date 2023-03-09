require_relative './base_decorator'

class TrimDecorator < BaseDecorator
  def correct_name
    super().length > 10 ? super()[0..9] : super()
  end
end
