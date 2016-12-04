class Puppy

def initialize
	puts "Initializing new puppy instance ..."
end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

def speak(integer)
	integer.times do
	puts "Woof!"
	end
	end

def roll_over
	puts "roll over"
end

def dog_years(age)
	puts age * 7
end

def play_dead
	puts "play dead"
end
end

spot = Puppy.new
spot.fetch("ball")

spot.speak(3)
spot.roll_over
spot.dog_years(5)
spot.play_dead

class Student

  def initialize(name,test)

    @name = name

    @test = test

  end

  

  def name

    puts "hi Bill"

  end

  

  def grade

    puts "you scored a 90"

  end

  

  

 i = 0

 until i == 50 do

student = Student.new("Bill",90)

i += 1

arry = []

arry <<  student

arry.each {|name,grade| puts "#{student.name} #{student.grade}"}

puts arry

end

end