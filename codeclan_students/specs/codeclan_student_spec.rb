require('minitest/autorun')
require_relative('../codeclan_student.rb')


class TestStudent < Minitest::Test

  def setup
    @student = Student.new("Ewa", 20)
  end

  def test_student_name
      assert_equal("Ewa", @student.get_name)
  end

  def test_student_cohort
      assert_equal(20, @student.get_cohort)
  end

  def test_set_name
      assert_equal("James", @student.set_name("James"))
  end

  def test_set_cohort
      assert_equal(22, @student.set_cohort(22))
  end

  def test_student_talk
      assert_equal("I've objectified myself!", @student.talk("I've objectified myself!"))
  end

  def test_say_favourite_language
    assert_equal("I love Ruby.", @student.say_favourite_language("Ruby"))
  end

end
