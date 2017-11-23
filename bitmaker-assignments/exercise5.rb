def convert(f)
  (f - 32) * 5/9
end

puts "What is the temperature in Fahrenheit today?"
temperature = gets.to_i

puts "Thanks, today's temperature in Celcius is #{convert(temperature)}"
