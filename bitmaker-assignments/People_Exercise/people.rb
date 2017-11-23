class People
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greeting
    "Hi!, I'm #{name}!"
  end
end
