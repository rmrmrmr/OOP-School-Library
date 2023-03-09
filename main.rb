['person.rb', 'cap_decorator.rb', 'trim_decorator.rb', 'student.rb', 'classroom.rb'].each { |x| require_relative x }

# person = Person.new(22, 'maximilianus')
# puts person.correct_name
# capitalized_person = CapDecorator.new(person)
# puts capitalized_person.correct_name
# capitalized_trimmed_person = TrimDecorator.new(capitalized_person)
# puts capitalized_trimmed_person.correct_name

alex = Student.new(22, 'One', 'Alex', parent_permission:false)
one = Classroom.new('One')
alex.classroom
one.add_student(alex)
alex.classroom
alex.classroom.label
one.students
puts one.students_names

john = Student.new(24, 'One', 'John', parent_permission:true)
john.classroom
one.add_student(john)
john.classroom
john.classroom.label
one.students
puts one.students_names
