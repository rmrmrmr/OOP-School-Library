# Import the Person class from the person.rb file
require_relative './person'

class Teacher < Person
  def initialize(specialization, age, name: 'Unknown')
    super(age, name:)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
