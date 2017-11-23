require_relative 'student'
require_relative 'teacher'

c = Teacher.new("Chris")
cr = Student.new("Christina")

puts c.greeting
puts cr.greeting

puts c.teach(cr)
puts cr.learn(c)

#c.learn and cr.teach(c) won't work because they call for class methods associated with other classes.
