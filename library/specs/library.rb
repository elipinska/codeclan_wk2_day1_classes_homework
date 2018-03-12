require('minitest/autorun')
require_relative('../library.rb')


class TestSportsTeam < Minitest::Test

  def setup
    @main_library = Library.new([
      {title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
      },
      {title: "eyre_affair",
       rental_details: {
          student_name: "Mary",
          date: "04/05/16"
        }
       }])
  end

# Create a method that takes in a book title and returns all of the information about that book.
  def test_book_lookup__book_found
    book_found = [{title: "eyre_affair",
     rental_details: {
        student_name: "Mary",
        date: "04/05/16"}
      }]
    assert_equal(book_found, @main_library.book_lookup("eyre_affair"))
  end

  def test_book_lookup__book_not_found
    assert_equal("Book not found", @main_library.book_lookup("les_miserables"))
  end

  #Create a method that takes in a book title and returns only the rental details for that book.
  def test_get_rental_details__book_found
    details_found = [{student_name: "Mary", date: "04/05/16"}]
    assert_equal(details_found, @main_library.get_rental_details("eyre_affair"))
  end

  def test_get_rental_details__book_not_found
    assert_equal("Book not found", @main_library.get_rental_details("les_miserables"))
  end

  # Create a method that takes in a book title and adds it to our book list (Add a new hash for the book with the student name and date being left as empty strings)
  def test_add_to_library
    @main_library.add_to_library("mervyn_peake")
    book_added = [{title:"mervyn_peake", rental_details: {student_name:"", date:""}}]
    assert_equal(book_added, @main_library.book_lookup("mervyn_peake"))
  end

  #Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.
  def test_change_rental_details
    book_modified =[{title:"eyre_affair", rental_details: {student_name:"Ewa", date:"10/08/2018"}}]
    @main_library.change_rental_details("eyre_affair", "Ewa", "10/08/2018")
    assert_equal(book_modified, @main_library.book_lookup("eyre_affair"))
  end


end
