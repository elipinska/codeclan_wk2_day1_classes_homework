class Student

  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

  def get_name
    @name
  end

  def get_cohort
    @cohort
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk(phrase)
    return phrase
  end

  def say_favourite_language(lang)
    return "I love #{lang}."
  end

end
