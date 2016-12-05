# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + ":)"
# end
# end

# Shout.yell_angrily("what the F")
# Shout.yelling_happily("hey")

module Shout
	def yell(word)
		puts word.upcase + "!!!!!"	
	end
end

class Loud
	include Shout
end

class StillLoud
	include Shout
	end
loud = Loud.new
loud.yell("hello")

still_loud = StillLoud.new
still_loud.yell("good bye")
