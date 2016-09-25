# Release 0
# A method that takes an array of integers and an
# integer to search for.
# Returns the index of the integer in the array
# If the integer isn't present. Returns nil.
# Can't use .index.  Can use .length and .each.

# Converts array to hash with index numbers as keys (To be used in search_array)
def arr_to_hash(array)
counter = 0
index_integer_hash = {}
array.each do |array_integer|
		index_integer_hash[counter] = array_integer
		counter += 1
end
return index_integer_hash
end

# Searches array for integer and prints index
def search_array(arr, integer)
	integer_hash = arr_to_hash(arr)
	counter = 0
	integer_hash.each do |index, hash_integer|
		if hash_integer == integer
			puts index
		else
			counter += 1
		end
	if counter == arr.length
		puts "nil"
	end
	end
end

#arr = [1, 3, 5, 7]

#puts search_array(arr, 0)

# Release 2
# A method that takes an integer and returns an array
# of Fibonacci numbers  array.length == integer

def fib(input_integer)
fibonacci_numbers = [0, 1]
counter = 0
until fibonacci_numbers.length == input_integer
	next_number = fibonacci_numbers[counter_2] + fibonacci_numbers[counter_2 + 1]
	fibonacci_numbers << next_number
	counter += 1
end
fibonacci_numbers
end
































