module Shout

	def self.yell_angrily(words)
    	words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!!" + " :D"
	end

end

# DRIVER CODE

puts Shout.yell_angrily("I'm angry")
puts Shout.yelling_happily("I'm happy")
