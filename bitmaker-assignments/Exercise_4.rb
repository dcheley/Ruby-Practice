counter = 1

while counter < 101
  puts "counter currently at #{counter}"
  counter += 1
  if counter >= 1 && counter % 3 == 0
    puts "Bit"
  elsif counter >= 1 && counter % 5 == 0
    puts "Maker"
  else counter >= 1 &&  counter % 3 == 0 && counter % 5 == 0
    puts "Bitmaker"
  end
end
