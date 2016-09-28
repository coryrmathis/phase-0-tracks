class Puppy

	def initialize
		puts "Initializing new puppy instance..."
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
  		puts "*rolls over*"
  	end

	def dog_years(human_years)
		dog_years = human_years * 7
		puts "This dog is #{dog_years} in dog years."
	end

	
	def learn_trick(trick)
		trick_array = []
		trick_array << trick
		p trick_array
	end
end

# spot = Puppy.new
# spot.fetch("rope")
# spot.speak(5)
# spot.roll_over
# spot.dog_years(4)
# spot.learn_trick("Play Dead")
# spot.learn_trick("Speak")

class Monkey

	def initialize
		puts "Initializing new monkey instance..."
	end

	def swing
		puts "-" * 20 + "> limb"
		puts ""
		puts "to <" + "-" * 20
		puts ""
		puts "-" * 20 + "> limb"
	end

	def add_tool(tool)
		tool_array = []
		tool_array << tool
		p tool_array
	end

end

fred = Monkey.new

fred.swing
fred.add_tool("rock hammer")
























