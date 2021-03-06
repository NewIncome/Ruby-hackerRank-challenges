# Determine IF the class IS CANCELED by the amount of students(a) arrived and on time(k, threshold)
# On time <= 0. Return 'YES' or 'NO'
def angryProfessor(k, a)
  # Write your code here
  studentsOnTime = 0
  a.each{|std| studentsOnTime += 1 if std <= 0}
  puts "studentsOnTime:#{studentsOnTime}, k:#{k}"
  studentsOnTime >= k ? 'NO' : 'YES'
end

# T.C.ex0 : YES
puts angryProfessor(3, [-1,-3,4,2])
# T.C.ex1 : NO
puts angryProfessor(2, [0,-1,2,1])
