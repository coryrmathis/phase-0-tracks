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

# Takes a consonant and returns the next vowel
def next_consonant(letter)
	consonants = "bcdfghjklmnpqrstvwxyz"
	if letter == "z"
		next_consonant = "b"
	else
	next_consonant = consonants[consonants.index(letter) + 1]
end
end

# Converts characters in original name to those to be in alias name
def alias_chars(name_chars)
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

puts "Please enter your full name."
original_full_name = gets.chomp
first_name_chars = name_to_char(name_to_array(original_full_name)[0])
last_name_chars = name_to_char(name_to_array(original_full_name)[1])

alias_first_name = alias_chars(first_name_chars).join('').capitalize
alias_last_name = alias_chars(last_name_chars).join('').capitalize

puts "Your alias is: #{alias_last_name} #{alias_first_name}"




#names = name_to_array("Felicia Torres")

#first_name_chars = name_to_char(names[0])
#last_name_chars = name_to_char(names[1])

#alias_first_name = alias_chars(first_name_chars).join('').capitalize
#alias_last_name = alias_chars(last_name_chars).join('').capitalize

#puts "Your alias is: #{alias_last_name} #{alias_first_name}"









