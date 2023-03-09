require 'securerandom'
require_relative './nameable'

class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @age = age
    @name = name
    @parent_permission = parent_permission
    @id = SecureRandom.uuid
  end

  attr_accessor :name, :age

  attr_reader :id

  def can_use_services?
    if of_age? | @parent_permission
      true
    else
      false
    end
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @id >= 18
  end
end
