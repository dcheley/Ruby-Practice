grocery_list = ['apples', 'oranges', 'pears', 'juice']
grocery_list << 'rice'

grocery_list.each do |item|
    puts "*" + "#{item}" #adds * to each item listed by previous line
end

puts grocery_list.count

if grocery_list.include? ("bananas") != false
  puts "You don't need to pick up bananas today"
else grocery_list.include? ("bananas") != true
  puts "You need to pick up bananas today"
end

puts grocery_list[1]

grocery_list.sort.each do |item|
  puts "*" + "#{item}"
end

grocery_list.delete("pears")
puts grocery_list #to show that pears string removed
