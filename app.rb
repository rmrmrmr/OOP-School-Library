%w[book person rental student teacher].each do |x|
  require_relative x
end
class App
  def list_books
    if Book.all.empty?
      puts 'There are no books in the database yet!'
    else
      Book.all.each do |book|
        puts "Title: #{book.title}, Author: #{book.author}"
      end
    end
  end

  def list_people
    if Student.all.empty? && Teacher.all.empty?
      puts 'There are no people in the database yet!'
    else
      Student.all.each do |student|
        puts "[Student] Name: #{student.name}, ID: #{student.id}, Age: #{student.age}"
      end
      Teacher.all.each do |teacher|
        puts "[Teacher] Name: #{teacher.name}, ID: #{teacher.id}, Age: #{teacher.age}"
      end
    end
  end

  def create_person
    print 'Do you want to create a student (1) or a Teacher (2)? [Input the number]: '
    select = gets.chomp.to_i
    if [1, 2].include?(select)
      print 'Age: '
      age = gets.chomp
      print 'Name: '
      name = gets.chomp
      case select
      when 1
        print 'Classroom: '
        classroom = gets.chomp
        print 'Has parent permission? [Y/N]: '
        permission = gets.chomp
        unless %w[Y N y n].include?(permission)
          puts 'Invalid input, please write Y or N'
          print 'Has parent permission? [Y/N]: '
        end
        Student.new(age, classroom, name:, parent_permission: permission)
        puts 'Student added the database successfully!'
      when 2
        print 'Specialization: '
        specialization = gets.chomp
        Teacher.new(age, specialization, name:)
        puts 'Teacher added to the database successfully!'
      end
    else
      puts 'Invalid option, please type 1 or 2'
      nil
    end
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    Book.new(title, author)
    puts 'Book added to the database successfully!'
  end

  def create_rental
    if Book.all.empty? || Person.all.empty?
      puts 'There are no books or people in the database yet!'
    else
      puts 'Select a book from the following list by number:'
      Book.all.each_with_index do |book, index|
        puts %(#{index}\) Title: #{book.title}, Author: #{book.author})
      end
      selected_book = gets.chomp.to_i
      puts 'Select a person from the following list by number (not ID):'
      Student.all.each_with_index do |student, index|
        puts %(#{index}\) [Student] Name: #{student.name}, ID: #{student.id}, Age: #{student.age})
      end
      Teacher.all.each_with_index do |teacher, index|
        puts %(#{index}\) [Teacher] Name: #{teacher.name}, ID: #{teacher.id}, Age: #{teacher.age})
      end
      selected_person = gets.chomp.to_i
      print 'Date [dd/mm/yyyy]: '
      date = gets.chomp
      Rental.new(date, Person.all[selected_person], Book.all[selected_book])
      puts 'Rental added to the database successfully!'
    end
  end

  def list_rentals
    if Person.all.empty? || Book.all.empty?
      puts 'Please add a person and a book to the rental database first!'
    else
      print 'ID of person: '
      selected_id = gets.chomp.to_i
      Rental.all.each do |rental|
        if rental.person.id == selected_id
          puts %(Date: #{rental.date}, Book: #{rental.book.title} by #{rental.book.author})
        else
          puts 'No rentals found for that ID!'
        end
      end
    end
  end
end
