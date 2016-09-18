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
	if password[counter] == " "
		password[counter] = " "
		counter += 1
	else
		alphabet = "abcdefghijklmnopqrstuvwxyz"
		alphabet.reverse!
		instance_in_alphabet = alphabet[alphabet.index(password[counter])]
		password[counter] = alphabet[(alphabet.index(instance_in_alphabet)) - 1] 
		counter += 1 
	end
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
	if password[counter] == " "
		password[counter] = " "
		counter += 1
	else
		alphabet = "abcdefghijklmnopqrstuvwxyz"
		instance_in_alphabet = alphabet[alphabet.index(password[counter])]
		password[counter] = alphabet[(alphabet.index(instance_in_alphabet)) - 1] 
		counter += 1 
	end
	end
return password 
end

#puts encrypt("abc")
#puts encrypt("zed")
#puts decrypt("bcd")
#puts decrypt("afe")

#puts decrypt(encrypt("swordfish"))
# Because the parentheses require the encryption to occur first, the decryption functions correctly.

puts "State your last name"
name = gets.chomp
puts "Hello Agent #{name}. Would you like to encrypt or decrypt?"
choice = gets.chomp
choice = choice.downcase

if choice == "encrypt"
	puts "What would you like to encrypt?"
	password = gets.chomp
	encrypted_password = encrypt(password)
	puts "Your encryption password: #{encrypted_password}"
elsif choice == "decrypt"
	puts "What would you like to decrypt?"
	password = gets.chomp
	decrypted_password = decrypt(password)
	puts "Your decryption: #{decrypted_password}"
end

puts ""
puts "Exiting program..."








