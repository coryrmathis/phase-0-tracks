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

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end
end

# DRIVER CODE

# *Prepare empty santa container and example gender and ethnicity arrays.*

santas = []
example_genders = ["male", "female", "shmale", "transgender", "agender"]
example_ethnicities = ["Hispanic", "White", "African-American", "Native American", "Asian", "Asian-American"]

# *Random number generator to randomly assign gender and ethnicity to each
# initialized santa. Random is a Ruby class. 0 <= random number < max integer.*
prng = Random.new
5.times do
	santas << Santa.new(example_genders[prng.rand(example_genders.length)], example_ethnicities[prng.rand(example_ethnicities.length)])
end

# Test Instance Methods

# Instance of Santa
santa_1 = santas[0]

p santa_1
santa_1.speak
santa_1.eat_milk_and_cookies("ladyfinger")

p santa_1
santa_1.get_mad_at("Rudolph")
santa_1.celebrate_birthday

p santa_1
puts santa_1.ethnicity
puts santa_1.age

