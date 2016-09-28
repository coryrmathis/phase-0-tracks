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
end

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

santas