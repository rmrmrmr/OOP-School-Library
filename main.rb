require_relative './app'

class Interface
  puts 'Welcome to the School Library App'
  def interface
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end
end

class Main
  def initialize
    @app = App.new
    @interface = Interface.new
  end

  def run
    puts @interface.interface
    input = gets.chomp.to_i
    options(input)
  end

  def options(input)
    selection = {
      1 => 'list_books',
      2 => 'list_people',
      3 => 'create_person',
      4 => 'create_book',
      5 => 'create_rental',
      6 => 'list_rentals'
    }
    case input
    when 1..6
      @app.send(selection[input])
      run
    when 7
      puts 'Thank you for using this app!'
    else
      puts 'Invalid option, please type 1, 2, 3, 4, 5, 6 or 7'
      run
    end
  end
end
main = Main.new
main.run