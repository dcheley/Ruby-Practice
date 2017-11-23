students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

def show(s)
  s.each do |cohort, students|
    puts "#{cohort} has #{students} students"
  end
end

show(students)

students[:cohort4] = 43 #this line is executed but not shown

show(students) #to show new hash

puts students.keys #also shows new hash but only one value

students.each do |cohort, students|
  students = students * 1.05
  puts "#{cohort} has #{students} students"
end

students.delete(:cohort2)
puts students

total_students = 0
students.each do |cohort, students|
  total_students += students
end
puts "There are #{total_students} at Bitmaker"
