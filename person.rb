require_relative './nameable'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rentals

  def initialize(age, name: 'Unknown', parent_permission: true)
    super()
    @age = age
    @name = name
    @parent_permission = parent_permission
    @id = Random.rand(1..1000)
    @rentals = []
  end

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

  def add_rental(rental)
    @rentals.push(rental)
    rental.person = self
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

  private

  def of_age?
    @id >= 18
  end
end
