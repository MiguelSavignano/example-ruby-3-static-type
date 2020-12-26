class Book
  def initialize(pages)
    @pages = pages
  end

  def pages
    @pages
  end
end

first_book = Book.new(100)
puts first_book.pages
