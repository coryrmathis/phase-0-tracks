module Shout
	def censor_curse(words)
		puts words.gsub(/[aeiou]/, "*")
	end
end

class Auctioneer
	include Shout
end

class Referee
	include Shout
end


# DRIVER CODE

auctioneer = Auctioneer.new
auctioneer.censor_curse("Dammit")

referee = Referee.new
referee.censor_curse("Hellfire")



# module Shout

# 	def self.yell_angrily(words)
#     	words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + " :D"
# 	end

# end

# # DRIVER CODE

# puts Shout.yell_angrily("I'm angry")
# puts Shout.yelling_happily("I'm happy")
