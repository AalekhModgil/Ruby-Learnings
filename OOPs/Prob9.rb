# Problem Statement 9: Library System Using Encapsulation, Inheritance, and Polymorphism
# Design a library system where:
# A Book class stores the book's title, author, and genre (encapsulated with appropriate accessors).
# An EBook class inherits from Book and adds a method download to simulate downloading an e-book.
# A PhysicalBook class also inherits from Book and adds a method checkout to simulate borrowing a physical book.
# Use polymorphism to create an array of mixed EBook and PhysicalBook objects and display the book details with 
# different behaviors for e-books and physical books.

class DownloadError < StandardError
  def initialize(msg = "Some error occured! Downloading failed.")
    super(msg)
  end
end


class Book
  def initialize(title,author,genre)
    @title = title
    @author = author
    @genre = genre
  end

  def book_details
    puts "The title of book is #{@title} written by #{@author} and it's genre is #{@genre}."
  end
end

class EBook < Book
  def initialize(title,author,genre)
    super(title,author,genre)
  end

  def download
    puts "Downloading #{@title}!"
    begin
      rng = Random.new
      rand = rng.rand(0..1)
      raise DownloadError if rand == 0
    rescue DownloadError => e 
      puts "#{e.message}"
      retry
    else 
      puts "#{@title} downloaded successfully!"
    end
  end
end


class PhysicalBook < Book
  def initialize(title,author,genre)
    super(title,author,genre)
  end

  def checkout
    puts "Book borrowed : #{@title}"
  end
end


books = [ EBook.new("Shadows of Elarion","Lysandra Vayne","Fantasy") ,PhysicalBook.new("The Algorithm of Fate","Dorian Kepler","Science Fiction") ]

books.each do |book|
  book.book_details
end

physicalBook1 = PhysicalBook.new("Threads of the Infinite Loom","Eldric Thorne","Fantasy")
physicalBook1.checkout

eBook1 = EBook.new("Songs of the Eternal Flame","Kael Durnan","Epic Fantasy") 
eBook1.download