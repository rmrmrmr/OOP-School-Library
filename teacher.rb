# Import the Person class from the person.rb file
require_relative './person.rb'

# Define the Teacher class, which inherits from the Person class
class Teacher < Person

  # Define the initialize method, which sets the name, age, parent_permission,
  # and specialization attributes for a new Teacher object
  def initialize(name='Unknown', age, parent_permission: true, specialization)
    # Call the super method with the name, age, and parent_permission arguments,
    # which sets the corresponding attributes in the parent Person class
    super(name, age, parent_permission)
    # Set the specialization attribute to the provided value
    @specialization = specialization
  end

  # Define the can_use_services? method, which returns true for all Teacher objects
  def can_use_services?
    true
  end
end