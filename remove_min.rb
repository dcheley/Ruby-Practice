#Remove min value from array, lowest index if duplicates & empty array if 1 item.
def remove_smallest(numbers)
  numbers.empty? ? [] : numbers.delete_at(numbers.index(numbers.min))
  numbers
end

def remove_smallest2(numbers)
  numbers.reject.with_index { |_,i| i == numbers.index(numbers.min)}
end

puts remove_smallest([1, 2])
