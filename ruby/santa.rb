class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_rating = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That sure was a good #{cookie}"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		reindeer_index = @reindeer_rating.index(reindeer)
		@reindeer_rating.delete_at(reindeer_index)
		@reindeer_rating[-1] = reindeer
	end
end

# DRIVER CODE

# Testing instance methods

# santa_1 = Santa.new
# santa_1.speak
# santa_1.eat_milk_and_cookies("ladyfinger")
santas = []
example_genders = ["male", "female", "shmale", "transgender", "agender"]
example_ethnicities = ["Hispanic", "White", "African-American", "Native American", "Asian", "Asian-American"]

# This random number generator takes a "max integer" parameter: 0 <= random number < max integer.
prng = Random.new
5.times do
	santas << Santa.new(example_genders[prng.rand(example_genders.length)], example_ethnicities[prng.rand(example_ethnicities.length)])
end

santa_1 = santas[0]
p santa_1
santa_1.get_mad_at("Rudolph")
santa_1.celebrate_birthday
p santa_1

