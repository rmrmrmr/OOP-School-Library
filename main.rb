['person.rb', 'cap_decorator.rb', 'trim_decorator.rb', 'student.rb', 'classroom.rb', 'rental.rb', 'book.rb'].each do |x|
  require_relative x
end

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalized_person = CapDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name

alex = Student.new(22, 'One', 'Alex', parent_permission: false)
one = Classroom.new('One')
alex.classroom
one.add_student(alex)
alex.classroom
alex.classroom.label
one.students
puts one.students_names

john = Student.new(24, 'One', 'John', parent_permission: true)
john.classroom
one.add_student(john)
john.classroom
john.classroom.label
one.students
puts one.students_names

rent_one = Rental.new(Date.new(2022, 0o1, 22), 'Ethics', 'Bob')
bob = Person.new(22, 'Bob')
puts rent_one.person
bob.add_rental(rent_one)
puts rent_one.person
puts rent_one.person.name
puts bob.rentals

ethics = Book.new('Ethics', 'Spinoza')
puts rent_one.book
ethics.add_rental(rent_one)
puts rent_one.book
puts rent_one.book.title
puts rent_one.book.author
puts ethics.rentals
