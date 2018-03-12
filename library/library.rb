class Library
  attr_reader :books

  def initialize(input_books)
    @books = input_books
  end


  def book_lookup(title)
    for book in @books
      return book if book[:title] == title
    end
    "Book not found"
  end

  def get_rental_details(title)
    for book in @books
      return book[:rental_details] if book[:title] == title
    end
    "Book not found"
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
    "Book not found"
  end

end
