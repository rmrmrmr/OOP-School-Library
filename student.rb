# Require the Person class from the person.rb file in the same directory
require_relative './person'

# Define a new class called Student that inherits from the Person class
class Student < Person
  # Define an initialize method with four parameters
  def initialize(classroom, age, name = 'Unknown', parent_permission: true)
    # Call the initialize method of the Person class with the name, age, and parent_permission arguments
    super(age, name, parent_permission)
    # Assign the value of the classroom argument to the instance variable @classroom
    @classroom = classroom
  end

  # Define a method called play_hooky that returns the string '"¯\(ツ)/¯"'
  def play_hooky
    '¯\(ツ)/¯'
  end
end
