require 'securerandom'

class Person
  # Define the constructor method with three parameters:
  def initialize(name = 'Unknown', age, parent_permission = true)
    # Generate a random UUID for each new Person object:
    @id = SecureRandom.uuid
    # Set the name and age of the Person:
    @name = name
    @age = age
  end

  # Define attribute accessor methods for name and age:
  attr_accessor :name
  attr_accessor :age
  
  # Define an attribute reader method for the ID:
  attr_reader :id

  # Define a method to determine if the person is allowed to use certain services:
  def can_use_services?
    # If the person is of age or has parental permission, they can use the services:
    if is_of_age? | @parent_permission
      true
    else
      false
    end
  end

  private

  # Define a private method to determine if the person is of age:
  def is_of_age?
    # If the person's ID indicates they are 18 or older, they are of age:
    if @id >= 18
      true
    else
      false
    end
  end
end