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

def initialize
	puts "Initializing new student instance ..."
end

def instance(n)
	new_students = Student.new(n)
end
end
