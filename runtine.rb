require_relative './person'
require_relative './cap_decorator'
require_relative './trim_decorator'

# Creates a new instance of the Person object with 22 as age and 'maximilianus' as name
person = Person.new(22, 'maximilianus')
# prints out into the console the string 'maximilianus'
puts person.correct_name
capitalized_person = CapDecorator.new(person)
# prints out into the console the string 'Maximilianus'
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimDecorator.new(capitalized_person)
# prints out into the console the string 'Maximilian'
puts capitalized_trimmed_person.correct_name