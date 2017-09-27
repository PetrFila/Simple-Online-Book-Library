require "rainbow"

@menu = ["Author", "Title", "Category", "Quit"]

@books = [
  ["Steve Jobs", "Walter Isaacson", "Memoir"],
  ["Pablo Escobar: My Father", "Juan Pablo Escobar", "Memoir"],

  ["The Shining", "Stephen King", "Horror"],
  ["Misery", "Stephen King", "Horror"],
  ["Frankenstein", "Mary Shelly", "Horror"],
  ["The Haunting of Hill House", "Shirley Jackson", "Horror"],
  ["American Psycho", "Bret Easton Ellis", "Horror"],

  ["The Lord of the Rings", "J. R. R. Tolkein", "Fantasy"],
  ["Assassin's Quest", "Robin Hobb", "Fantasy"],
  ["The Hobbit", "J. R. R. Tolkein", "Fantasy"],
  ["The Way of Kings", "Brandon Sanderson", "Fantasy"],
  ["Ship of Destiny", "Robin Hobb", "Fantasy"],

  ["Cow goes moo", "Mr Cow", "Children"],
  ["Cat goes meow", "Mrs Kitty", "Children"],
  ["Bird goes tweet", "Mr Twitter", "Children"]
]

class Books
  def initialize(author, title, category)
    @author = author
    @title = title
    @category = category
  end
  attr_accessor :author, :title, :category
end


class Menu
  def initialize(selection)
    @selection = selection
  end

  attr_accessor :selection

def menuList
  #Prints menu as an ordered list
  choice = false
  while

  i = 0
  until i > @menu.length - 1 do
     puts (i + 1).to_s + " " + @menu[i]
    i = i + 1
  end

  menu_choice = gets.chomp.to_i
  if menu_choice != 1 && menu_choice != 2 && menu_choice != 3 && menu_choice != 4
    noWay()
  else
    choice = true
    if menu_choice == 1 #Author option

  arrayFilter("author")

    elsif menu_choice == 2 #Title option
      i = 0
      until i > @books.length - 1 do
         puts (i + 1).to_s + " " + @books [i][0] + " - " + @books[i][1]+ " (" + @books[i][2] + ")"
        i = i + 1
      end

    elsif menu_choice == 3
      categoryFilter("category")


    elsif menu_choice == 4
      break
      end
    end
  end
end
end


def noWay ()
 puts "Can't you see the options?"
end

def arrayFilter(author)
  i = 0
  categoriesFiltered = []
  until i > @books.length - 1 do #Category option
        categoriesFiltered.push(@books [i][1])
        i = i + 1
  end
  categoriesFiltered = categoriesFiltered.uniq


  g = 0
  until g > categoriesFiltered.length - 1 do
    categoriesFiltered = categoriesFiltered.sort
    puts (g + 1).to_s + " " + categoriesFiltered[g]
    g = g + 1
  end

  puts "Select your author:"
  category_choice = gets.chomp.to_i - 1
  puts Rainbow("\n TOP BOOKS by " + categoriesFiltered[category_choice] + ":").inverse
  c = 0
  categoryChoice = []
  until c > @books.length - 1 do #Filters out all @books by author
    if @books[c][1] == categoriesFiltered[category_choice]
      categoryChoice.push(@books[c][0])
    end
    c = c + 1

  end
  a = 0
  until a > categoryChoice.length - 1 do
  puts categoryChoice [a]
  a = a + 1
  end

end


def categoryFilter(category)
  i = 0
  categoriesFiltered = []
  until i > @books.length - 1 do #Category option
        categoriesFiltered.push(@books [i][2])
        i = i + 1
  end
  categoriesFiltered = categoriesFiltered.uniq


  g = 0
  until g > categoriesFiltered.length - 1 do
     puts (g + 1).to_s + " " + categoriesFiltered[g]
    g = g + 1
  end
  puts "Select your category:"
  category_choice = gets.chomp.to_i - 1
  puts Rainbow("\nTOP BOOKS in " + categoriesFiltered[category_choice] + " category.").inverse
  c = 0
  categoryChoice = []
  until c > @books.length - 1 do #Filters out all @books from a particular category
    if @books[c][2] == categoriesFiltered[category_choice]
      categoryChoice.push(@books[c][0..1])
    end
    c = c + 1

  end
  a = 0
  until a > categoryChoice.length - 1 do
  puts categoryChoice [a][0] + " - " + categoryChoice[a][1]
  a = a + 1
  end
end




####### The program starts here #######
puts "Welcome to Amazon... Select a search option:"

step1 = Menu.new("selection")
step1.menuList
