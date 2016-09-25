# Release 0
# A method that takes an array of integers and an
# integer to search for.
# Returns the index of the integer in the array
# If the integer isn't present. Returns nil.
# Can't use .index.  Can use .length and .each.

def arr_to_hash(array)
counter = 0
index_integer_hash = {}
array.each do |array_integer|
		index_integer_hash[counter] = array_integer
		counter += 1
end
return index_integer_hash
end


def search_array(arr, integer)
	integer_hash = arr_to_hash(arr)
	integer_hash.each do |index, hash_integer|
		if hash_integer == integer
			puts index
		else
			puts "nil"
		end
	end
end

arr = [1, 3, 5, 7]
#puts arr_to_hash(arr)

puts search_array(arr, 3)


