class Library
  def initialize (name, bookObject)
    @name = name
    @bookObject = bookObject
    @listOfBooks = [bookObject]
  end

  attr_accessor :bookObject, :listOfBooks

  def method(print)
    #puts @bookObject
  end

  def addBookToList(newBook)
    @listOfBooks << newBook
  end

  def self.all #used to list all items in a category.
    ObjectSpace.each_object(self).to_a
  end
end


class Book
  def initialize(author, title, category)
    @author = author
    @title = title
    @category = category
  end
  attr_accessor :author, :title, :category
end

class User
  def initialize (idNumber, name)
    @idNumber = idNumber
    @name = name
  end
  attr_accessor :idNumber, :name
end


bondi = Library.new('Bondi', the_lotr = Book.new("Tolkien", "The LOTR", "fantasy"))

bondi.addBookToList(the_hobbit = Book.new("Tolkien", "The Hobbit", "fantasy"))

ultimo = Library.new('Ultimo', Book.new('Shaun Mac', "Book One", "Adult"))

#puts bondi.bookObject.author
# Library.all.each do |library|
#   library.listOfBooks.each do |this|
#     puts "The author of #{this.title} is #{this.author}"
#   end
# end
