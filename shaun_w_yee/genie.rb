class Genie
	attr_reader :age
	attr_accessor :name

def initialize(name,age)
	@name = name
	@age = age
end

def enter_lamp
	puts "the genie is currently inside the lamp"
end
def exit_lamp
	puts "the genie is currently outside the lamp"
end
end

genie1 = Genie.new("Bob", "3218")
genie1.enter_lamp