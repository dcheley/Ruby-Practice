require_relative 'people'

class Teacher < People

  def teach(student)
    "Take this in #{name}"
  end
end
