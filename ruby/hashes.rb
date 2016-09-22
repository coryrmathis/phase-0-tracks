# 1. Prompt user for input: Name, Age, Address, Favorite Color, Children?
# 2. Incorporate user input as values in a hash as correct datatype.
# 3. Print the hash for user review
# 4. Give user chance to update their responces by entering the key
#		-if they want to update, store new values then exit
#		-if they don't want to update, entering "none" will exit
# 5. Print final hash to screen

design_hash = {}

puts "Please answer the following questions relavent to your design preferences:"
puts ""
puts "What is your name?"
design_hash[:name] = gets.chomp
puts "What is your current age?"
design_hash[:age] = gets.chomp.to_i
puts "At what address is the redesign required?"
design_hash[:address] = gets.chomp
puts "What is your favorie color?"
design_hash[:fav_color] = gets.chomp
puts "Do you have any children? 'Yes' or 'No'?"
children = gets.chomp
if children.downcase == "yes"
	design_hash[:children] = true
elsif children.downcase == "no"
	design_hash[:children] = false
end 

p design_hash

puts "Would you like to update an answer? If so, in which category? If not type 'none'."
update_category = gets.chomp
if update_category == "none"
	puts design_hash
	puts "Thank you for your information.  Goodbye."
else
	update_category = update_category.to_sym
	puts "What is your updated answer?"
	design_hash[update_category] = gets.chomp
	puts design_hash
	puts "Thank you for your information.  Goodbye."
end