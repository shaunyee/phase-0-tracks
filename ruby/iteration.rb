grades = ["a", "b", "c", "d", "f",]
students = {
	James: "a",
	Bob: "c",
	Mike: "f",
	Matt: "b",
	Rob: "a"
 }

grades.each do |grades|
	puts grades
end
students.each do |student, grades|
  puts student, grades
end

grades.map! do |grades|
  grades.upcase
end
students.map do |student, grades|
  p grades.upcase
end

grades.delete("C")
p grades
students.delete(:Bob)
p students
p students.select {|student,grade|grade=="a"}
p grades.select {|grade|grade=="F"}
p students.drop_while {|students,grades|grades<"f"}
p grades.drop_while {|grades|grades<"B"}

grades.keep_if {|grade| grade =~/["B","D"]/}

