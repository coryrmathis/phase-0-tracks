class Santa

	attr_reader :ethnicity, :gender
	attr_accessor :age

	def initialize(gender, ethnicity, age)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_rating = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That sure was a good #{cookie}"
	end

# Advance age by one year of Santa instance
	def celebrate_birthday
		@age += 1
	end

# Moves given reindeer to end of rating list
	def get_mad_at(reindeer)
		reindeer_index = @reindeer_rating.index(reindeer)
		@reindeer_rating.delete_at(reindeer_index)
		@reindeer_rating[-1] = reindeer
	end
end

# SANTA CREATION PROGRAM

# Version 2.0 (Much cleaner and more concise)

1000.times do 
	santa = Santa.new(example_genders.sample, example_ethnicities.sample, rand(140))
	puts "-" * 10
	puts "This santa's age is #{santa.age}."
	puts "They identify as #{santa.gender}."
	puts "Their ethnicity is #{santa.ethnicity}."
	puts "-" * 10
end



# Version 1.0 (Left in as comment for reference)

# *Prepare empty santa container and example gender and ethnicity arrays.*

# santas = []
# example_genders = ["male", "female", "shmale", "transgender", "agender"]
# example_ethnicities = ["Hispanic", "White", "African-American", "Native American", "Asian", "Asian-American"]

# *Random number generator to randomly assign gender and ethnicity to each
# initialized santa. Random is a Ruby class. 0 <= random number < max integer.*


# prng = Random.new
# 1000.times do |i|
# 	santas << Santa.new(example_genders[prng.rand(example_genders.length)], example_ethnicities[prng.rand(example_ethnicities.length)], prng.rand(140) )
# 	puts "-" * 10
# 	puts "This santa's age is #{santas[i].age}."
# 	puts "They identify as #{santas[i].gender}."
# 	puts "Their ethnicity is #{santas[i].ethnicity}."
# 	puts "-" * 10
# end

# DRIVER CODE

# Test Instance Methods

# Instance of Santa
# santa_1 = santas[0]

# p santa_1
# santa_1.speak
# santa_1.eat_milk_and_cookies("ladyfinger")

# p santa_1
# santa_1.get_mad_at("Rudolph")
# santa_1.celebrate_birthday

# p santa_1
# puts santa_1.ethnicity
# puts santa_1.age

