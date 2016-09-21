
# Test feeding a block to a method using "yield" keyword.
def method
	puts "Before block"
	yield("Hello", "goodbye")
	puts "After block"
end

method{|x,y| puts "#{x} and #{y}"}

# Create "colors" array and "food" hash
colors = ["red", "blue", "green", "purple", "pink", "orange"]
food_types = {
	"Italian" => "Pizza",
	"Mexican" => "Burritos",
	"Chinese" => "Fried Rice",
	"Spanish" => "Tapas",
	"America" => "Cheeseburgers",
	"Canadian" => "Maple Syrup",
}

#Iterate over the array and hash using .each
colors.each { |color| "I like this color:#{color}"}
food_types.each { |ethnicity, food| "#{food} is #{ethnicity}"}

#Iterate over array using .map! *.map is incompatible with hashes*
colors.map! do |color|
	color = color.upcase
end 

#Numbers array and hash
numbers = [1,2,3,4,5,6,7,8]
numbers_hash ={
	"one" => 1,
	"two" => 2,
	"three" => 3,
	"four" => 4,
}

# A method that iterates through the items, deleting any that meet
# a certain condition

# Array (delete_if)
numbers.delete_if {|number| number < 3}

#Hash (delete_if)
numbers_hash.delete_if {|word, integer| word.length > 3}

#Numbers array and hash
numbers = [1,2,3,4,5,6,7,8]
numbers_hash ={
	"one" => 1,
	"two" => 2,
	"three" => 3,
	"four" => 4,
}

# A method that filters a data structure for only items that
# do satisfy a certain condition.

#Array (keep_if)
numbers.keep_if {|number| number < 3}

#Hash (keep_if)
numbers_hash.keep_if {|word, integer| word == "three"}

#Numbers array and hash
numbers = [1,2,3,4,5,6,7,8]
numbers_hash ={
	"one" => 1,
	"two" => 2,
	"three" => 3,
	"four" => 4,
}

#A different method that filters a data structure for only items
#satisfying a certain condition.

#Array (take_while)
numbers.take_while {|number| number < 4}

#Hash (has_value?)
numbers_hash.select {|word, integer| word.start_with?("t")}

#Numbers array and hash
numbers = [1,2,3,4,5,6,7,8]
numbers_hash ={
	"one" => 1,
	"two" => 2,
	"three" => 3,
	"four" => 4,
}

#A method that will remove items from a data structure until
# the condition in the block evaluates to false then stops.

#Array (drop_while)
numbers.drop_while {|number| number < 4}

#Hash (reject)
numbers_hash.reject {|word, integer| integer > 2}







