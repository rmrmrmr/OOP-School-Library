require 'securerandom'

class Person
  def initialize(name = 'Unknown', age, parent_permission = true)
    @id = SecureRandom.uuid
    @name = name
    @age = age
  end

  attr_accessor :name
  attr_accessor :age
  attr_reader :id

  def can_use_services?
    if :is_of_age? | @parent_permission
      true
    else
      false
    end
  end

  private

  def is_of_age?
    if @id >= 18
      true
    else
      false
    end
  end
end