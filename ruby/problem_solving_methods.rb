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

# Release 1
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

# Release 2

# Bubble Sort- A sorting method which sorts by comparing
# two adjacent elements, starting at the beginning of the list,
# and switching them if they're in the wrong order. It them moves to the next
# adjacent pair of elements (which would include one of the previous elements).
# Working this way, larger elements "bubble" to the end of a list, leaving one
# element fully sorted on each iterations.

# 1. Compare first two elements.
# 	-If they are correctly ordered, move to next two.
# 	-If not switch the order.
# 2. Compare next two elements as above
# 3. Continue until there are no elements left to be sorted.

def bubble_sort(arr)
length = arr.length
loop do
switch = false
	(length - 1).times do |i|
	    if arr[i] > arr[i + 1]
	    	arr[i], arr[i + 1] = arr[i+1], arr[i]
	        switch = true
	    end
	end
	if switch == false
	    break
	  end
end
arr
end

arr = [22, 3, 5, 7, 2, 1, 0]
p bubble_sort(arr)




































