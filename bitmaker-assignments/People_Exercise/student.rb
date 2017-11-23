require_relative 'people'

class Student < People

  def learn(teacher)
    "I get it! Thanks #{name}"
  end
end
