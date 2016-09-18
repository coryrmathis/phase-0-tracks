# How many candidates will be processed this session?
puts "How many employees will be processed this session?"
candidates = gets.chomp
candidates = candidates.to_i
while candidates > 0
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
	if age_honesty == true && (garlic == true || insurance == true)
		vampire_status = "Probably not a vampire."
		possibility_1 = true
	elsif (age_honesty == false && (garlic == false && insurance == true)) || (age_honesty == false && (garlic == true && insurance == false))
		vampire_status = "Probably a vampire."
		possibility_2 = true
	elsif (age_honesty == false && (garlic == false && insurance == false))
		vampire_status = "Almost certainly a vampire."
		possibility_3 = true
	else
		vampire_status = "Results inconclusive."
		possibility_4 = true
	end

	if (possibility_1 == true) && (name == "Drake Cula" || name == "Tu Fang")
		vampire_status = "Definitly a vampire."
	elsif (possibility_2 == true) && (name == "Drake Cula" || name == "Tu Fang")
		vampire_status = "Definitly a vampire."
	elsif (possibility_3 == true) && (name == "Drake Cula" || name == "Tu Fang")
		vampire_status = "Definitely a vampire."
	elsif (possibility_4 == true) && (name == "Drake Cula" || name == "Tu Fang")
		vampire_status = "Definitely a vampire."
	end

puts "Please list any allergies one at a time.  Type 'done' when you're finished."

allergy_loop = false
until allergy_loop
	allergies = gets.chomp
	allergies = allergies.downcase
	if allergies == "done"
		puts vampire_status
		allergy_loop = true
	elsif allergies == "sunshine"
		vampire_status = "Probably a vampire."
		puts vampire_status
		allergy_loop = true
	else 
		puts "Please list any others.  If you're finished type 'done'?"
	end
end

candidates -= 1
end

puts "Session ended."
puts ""
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."






