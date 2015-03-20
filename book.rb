class Book
  include Comparable
  
  attr_accessor :name
  attr_reader :author, :isbn, :price

  @@count = 0
  EURUSD = 1.13
  
  def initialize(name, price, isbn, author)
    @name = name
    @price = price
    @author = author
    @isbn = isbn
    
    @@count += 1
  end
  
  def to_s
    "Name: #{@name}, ISBN: #@isbn, Price: #{@price}, Author: #{@author}"
  end
  
  def Book.count
    @@count
  end
  
  def price_in_eur
    @price / EURUSD
  end
  
  def price_in_eur= (eur)
    @price = eur * EURUSD
  end
  
  # def <=>(other)
  #   isbn <=> other.isbn
  # end
  
  # def name
  #   @name
  # end
  #
  # def name=(name)
  #   @name = name
  # end
end

# p Book.count
b1 = Book.new("Harry Potter", 10.5, 5555, "JK Rowling")
# puts b1.name

b1.name= ("Chamber of Secrets")
# b1.name = "Chamber of Secrets"
# b1.name = "Deathly Hallows"

# puts b1.name
# puts b1.author
# puts b1
# p b1

b2 = Book.new("Diamond Age", 50, 4455, "Neal Stephenson")
b3 = Book.new("The enchantress of florence", 6.5, 555, "Salman Rushdie")
b4 = Book.new("Not Twilight!!", 75, 1111, "Someone good")

# p Book.count
# p b1.price
# p b1.price_in_eur

b1.price_in_eur = 100
# p b1.price
# p b1.price_in_eur

# p Book::EURUSD
# Book::EURUSD = 4
# p Book::EURUSD

my_books = [b1, b2, b3, b4]
# p my_books
# p my_books.sort
 p my_books.max
 
 p b1.<=>b2