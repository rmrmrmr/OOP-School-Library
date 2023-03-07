require 'securerandom'

class Person
  # Define the constructor method with three parameters:
  def initialize(age, name = 'Unknown', parent_permission: true)
    # Generate a random UUID for each new Person object:
    @id = SecureRandom.uuid
    # Set the name, age & parent_permission of the Person:
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # Define attribute accessor methods for name and age:
  attr_accessor :name
  attr_accessor :age

  # Define an attribute reader method for the ID:
  attr_reader :id

  # Define a method to determine if the person is allowed to use certain services:
  def can_use_services?
    # If the person is of age or has parental permission, they can use the services:
    if of_age? | @parent_permission
      true
    else
      false
    end
  end

  private

  # Define a private method to determine if the person is of age:
  def of_age?
    # If the person's ID indicates they are 18 or older, they are of age:
    @id >= 18
  end
end
