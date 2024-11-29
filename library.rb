#Library Management System
#Manages books in a library with options to borrow or return books.

class Library
  def initialize
    @books = { "Ruby Basics" => 3, "Learn Rails" => 2, "AI with Ruby" => 1 }
  end

  def display_books
    puts "\nAvailable Books:"
    @books.each { |title, count| puts "#{title}: #{count} copies available" if count > 0 }
  end

  def borrow_book
    display_books
    print "\nEnter the book title to borrow: "
    title = gets.strip
    if @books[title] && @books[title] > 0
      @books[title] -= 1
      puts "You have borrowed '#{title}'."
    else
      puts "Sorry, the book is not available."
    end
  end

  def return_book
    print "Enter the book title to return: "
    title = gets.strip
    if @books.key?(title)
      @books[title] += 1
      puts "Thank you for returning '#{title}'."
    else
      puts "This book does not belong to our library!"
    end
  end

  def run
    loop do
      puts "\n1. View Books"
      puts "2. Borrow a Book"
      puts "3. Return a Book"
      puts "4. Exit"
      print "Choose an option: "
      choice = gets.to_i

      case choice
      when 1 then display_books
      when 2 then borrow_book
      when 3 then return_book
      when 4
        puts "Thank you for using the Library. Goodbye!"
        break
      else
        puts "Invalid choice! Try again."
      end
    end
  end
end

library = Library.new
library.run
