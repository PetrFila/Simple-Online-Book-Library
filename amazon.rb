require "rainbow"
menu = ["Author", "Title", "Category", "Quit"]



puts Rainbow("Welcome to Amazon").inverse
puts "Choose your category"
i = 0
until i > menu.length - 1 do
   puts (i + 1).to_s + " " + menu[i][1]
  i = i + 1
end



class Book
  def initialize(author, title, category, prize)
    @author=author
    @title=title
    @category=category
    @prize=prize
  end
  attr_accessor :name, :title, :category, :prize

  def czk()
    return @prize * 19
  end
end

class Category
  def initialize(id, name)
    @id = id
    @name = name
  end
  attr_accessor :id, :name
end

drama = Category.new(1, "Drama")
komedie = Category.new(2, "Komedie")

hamlet = Book.new("Shakespare", "Hamlet", drama, 30)
romeoaj = Book.new("Shakespare", "Romeo a Julie", drama, 20)
svatojanske = Book.new("Shakespare", "Sen noci svatojanske", komedie, 10)

books = [hamlet, romeoaj, svatojanske]

until i > books.length - 1 do
   puts (i + 1).to_s + " " + books[i].czk()
  i = i + 1
end
