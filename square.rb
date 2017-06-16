def find_next_square(sq)
  n = Math.sqrt(sq) + 1
  n % 1 == 0 ? n**2 : -1
end

def find_next_square2(sq)
  check = -> (n) { Math.sqrt(n) % 1 == 0 }
  check.call(sq) ? (Math.sqrt(sq) + 1)**2 : -1
end

puts find_next_square(64)
puts find_next_square2(64)
