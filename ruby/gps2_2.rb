# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Split string at " "
  # set default quantity
  # Store each item and associate with a default value of 0.
  # print the list to the console [can you use one of your other methods here?]
# output: Hash

# Method to add an item to a list
# input: list, item name and optional quantity
# steps:
	# Allow for quantity parameter to be optional
	# Add item name attached to optional quantity
# output: New hash 

# Method to remove an item from the list
# input: Hash, item to be removed
# steps:
	# IF item is in list
	# 	Remove item
	# IF item is not in list
	#   Print error message
# output: Updated Hash

# Method to update the quantity of an item
# input: list, Hash Key(Item Name), quantity
# steps:
	# IF item is in the list
	#   Update item quantity
	# IF item is NOT in the list
	#   Print error message
# output: Updated Hash

# Method to print a list and make it look pretty
# input: list
# steps:
	# Loop over list, printing items and values in a readable context
# output: Output a readable string containing keys and values for each item.