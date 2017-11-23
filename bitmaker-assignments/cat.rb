class Cat
  attr_accessor :name
  attr_accessor :fav_food
  attr_accessor :meal_time

  def initialize(name, fav_food, meal_time)
    @name = name
    @fav_food = fav_food
    @meal_time = meal_time.to_i
  end

  def eats_at
    if self.meal_time > 12
     print "#{self.name} eats at #{self.meal_time.to_i - 12}pm"
    else
     print "#{self.name} eats at #{self.meal_time.to_i}am"
    end
  end

  def meow
    puts "#{self.name} the cat, who loves eating #{self.fav_food} at #{self.meal_time} says MEOW"
  end
end

#Enter "ruby cat.rb" into the Command Line
cat_1 = Cat.new('Joe', 'Pasta', '5')
cat_2 = Cat.new('Frank', 'Rice', '18')

puts "#{cat_1.meow}"
puts "#{cat_2.meow}"

puts "#{cat_1.eats_at}"
puts "#{cat_2.eats_at}"
