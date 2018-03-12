class Library
  attr_reader :books

  def initialize(input_books)
    @books = input_books
  end

  def book_lookup(title)
    book_found = []
    for book in @books
      book_found.push(book) if book[:title] == title
    end
    book_found == [] ? "Book not found" : book_found
  end

  def book_lookup(title)
    book_found = []
    for book in @books
      book_found.push(book) if book[:title] == title
    end
    book_found == [] ? "Book not found" : book_found
  end

  def get_rental_details(title)
    details_found = []
    for book in @books
      details_found.push(book[:rental_details]) if book[:title] == title
    end
    details_found == [] ? "Book not found" : details_found
  end

  def add_to_library(title)
    new_book = {title: title,
                rental_details: {
                  student_name: "",
                  date: ""
                }
               }
    @books.push(new_book)
  end

  def change_rental_details(title, student, date)
    for book in @books
      if book[:title] == title
        book[:rental_details][:student_name] = student
        book[:rental_details][:date] = date
      end
    end
  end
end
