# ENCRYPTION ALGORITHM
#1. Define an "encript" method which accepts a one string argument
#2. Set a counter at 0
#3. Create a loop using the length of the string
# and index numbers to loop through each 
# letter in the string and advance it one letter.
#4. End loop after last letter in string is altered.
#5. Keep spaces as spaces.

def encrypt(password)
	counter = 0
	while counter < password.length
		alphabet = "abcdefghijklmnopqrstuvwxyz"
		alphabet.reverse!
		instance_in_alphabet = alphabet[alphabet.index(password[counter])]
		password[counter] = alphabet[(alphabet.index(instance_in_alphabet)) - 1] 
		counter += 1 
	end
return password 
end



# DECRYPTION ALGORITHM
#1. Define a "decript" method which accepts
# one string (the encripted password)
#2. Set counter at 0
#3. Create a loop using the length of the string
# and index numbers to loop through each
# letter in the string to revert it to the original 
# letter.
# 4. End loop after last letter in string is reverted.

def decrypt(password)
	counter = 0
	while counter < password.length
		alphabet = "abcdefghijklmnopqrstuvwxyz"
		instance_in_alphabet = alphabet[alphabet.index(password[counter])]
		password[counter] = alphabet[(alphabet.index(instance_in_alphabet)) - 1] 
		counter += 1 
	end
return password 
end

puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")

puts decrypt(encrypt("swordfish"))






