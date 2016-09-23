# Alias Generator

# 1. Accept user input
# 2. Downcase user input for workability
# 3. Create method to separate user input into separate names (.split(‘ ‘))
#	-this will yield an array of single names which can be manipulated via index number.
# 4. Create method to
#	-Be fed a single name (No spaces to deal with this way)
#	-Separate the name into characters (.split(‘’))
# 5. Create method to
#	-check if a character is a vowel
#	-return the next vowel in an ordered vowel string
# 6. Create method to
#	-check if a character is a consonant
#	-return the next consonant in an ordered consonant list
# 7. Create method to
#	-loop through array of characters (.map!)?
#	-use methods 5 and 6 to i.d. and replace appropriate characters
# 8. Create method to join characters into single names
# 9. Swap the first and last names and print
	
# Driver Code

# Returns array of names
def name_to_array(names)
	names.split(' ')
end

# Returns array of characters
def name_to_char(name)
	name.split('')
end

# Takes a vowel and returns the next vowel
def next_vowel(letter)
	vowels = "aeiou"
	if letter == "u"
		next_vowel = "a"
	else
	next_vowel = vowels[vowels.index(letter) + 1]
end
end

# Takes a consonant and returns the next consonant
def next_consonant(letter)
	consonants = "bcdfghjklmnpqrstvwxyz"
	if letter == "z"
		next_consonant = "b"
	else
	next_consonant = consonants[consonants.index(letter) + 1]
end
end

# Converts characters in original name to those to be in alias name
def to_alias_chars(name_chars)
name_chars.map! do |character|
	character = character.downcase
	if character == "a"
		next_vowel(character)
	elsif character == "e"
		next_vowel(character)
	elsif character == "i"
		next_vowel(character)
	elsif character == "o"
		next_vowel(character)
	elsif character == "u"
		next_vowel(character)
	else 
		next_consonant(character)
	end
end
end


#User Interface
#***I know some of the code below is less than readable.  I got a bit stuck and ran out of time.
stop_status = false
real_name_array = []
alias_array = []
until stop_status == true
puts "Please enter your full name."
original_full_name = gets.chomp
if original_full_name != "quit"
first_name_chars = name_to_char(name_to_array(original_full_name)[0])
last_name_chars = name_to_char(name_to_array(original_full_name)[1])

alias_last_name = to_alias_chars(first_name_chars).join('').capitalize
alias_first_name = to_alias_chars(last_name_chars).join('').capitalize

final_alias = alias_first_name + " " + alias_last_name 
real_name_array << original_full_name
alias_array << final_alias
puts "Your alias is: #{final_alias}"
stop_status = false
counter = 0
else
	while counter < real_name_array.length 
	puts "#{real_name_array[counter]} AKA #{alias_array[counter]}"
	counter += 1
end
	puts "Goodbye"
	stop_status = true
end
end










