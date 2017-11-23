require_relative 'item'
require_relative 'receipt'

a = Item.new("Harry Potter", "12.49")
b = Item.new("MJ Hits", "14.99")
c = Item.new("Oh Henry!", "0.85")

r1 = Receipt.new

r1.add_item(a)
r1.add_item(b)
r1.add_item(c)

puts "#{a.name} tax = #{a.tax}"
puts "#{b.name} tax = #{b.tax}"
puts "#{c.name} tax = #{c.tax}"

puts "#{a.buy}"
puts "#{b.buy}"
puts "#{c.buy}"

puts "#{r1.sub_total}"
puts "#{r1.tax_total}"
puts "#{r1.total_cost}"
puts "#{r1.result}"
