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

#names = name_to_array("Cory Mathis")

#firstname_chars = name_to_char(names[0])
#lastname_chars = name_to_char(names[1])

#p firstname_chars
#p lastname_chars

# Takes a vowel and returns the next vowel
def to_vowel(letter)
	vowels = "aeiou"
	if letter == "u"
		next_vowel = "a"
	else
	next_vowel = vowels[vowels.index(letter) + 1]
end
end

# Takes a consonant and returns the next vowel
def to_consonant(letter)
	consonants = "bcdfghjklmnpqrstvwxyz"
	if letter == "z"
		next_consonant = "b"
	else
	next_consonant = consonants[consonants.index(letter) + 1]
end
end


