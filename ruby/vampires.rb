
# Recieve applicant name.
puts "Welcome to Werewolf Inc.  Please state your name."
name = gets.chomp
# Recieve applicant stated age.
puts "Please state your age."
stated_age = gets.chomp.to_i
# Recieve applicant stated birthday
puts "Please state your year of birth."
birth_year = gets.chomp.to_i
birth_year_age = 2016 - birth_year
# Age honest is a boolean variable testing if state birth year corresponds with state age.
age_honesty = (stated_age == birth_year_age)
# Test applicant garlic preference. Support invalid input.
valid_input = false
until valid_input
	puts "Would you like garlic bread with your lunch? y/n?"
	garlic = gets.chomp
	garlic = garlic.downcase
	if garlic == "y"
		garlic = true
		valid_input = true
	elsif garlic == "n"
		garlic = false
		valid_input = true
	else
		puts ""
		puts "I didn't understand you."
	end
end
# Assess applicant interest in health insurance. Support invalid input.
valid_input = false
until valid_input
	puts "Are you interested in enrolling in our health insurance plan? y/n?"
	insurance = gets.chomp
	insurance.downcase
	if insurance == "y"
		insurance = true
		valid_input = true
	elsif insurance == "n"
		insurance = false
		valid_input = true
	else
		puts ""
		puts "I didn't understand you."
	end
end

#Vampire detection program.
case
when (age_honesty == true) && (garlic || insurance)
	vampire_status = "Probably not a vampire."
when (age_honesty == false) && ((garlic == false) || (insurance == false))
	vampire_status = "Probably a vampire."
when (age_honesty == false) && (garlic == false) && (insurance == false)
	vampire_status = "Almost certainly a vampire."
end

puts vampire_status




