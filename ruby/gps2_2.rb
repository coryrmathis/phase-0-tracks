# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Split string at " "
  # set default quantity
  # Store each item and associate with a default value of 0.
  # print the list to the console [can you use one of your other methods here?]
# output: Hash
def create_list(items_string)
  list = {}

  items_string.split(' ').each do |item|
    list[item] = 0
  end

  return list
end


# Method to add an item to a list
# input: list, item name and optional quantity
# steps:
 # Allow for quantity parameter to be optional
 # Add item name attached to optional quantity
# output: New hash
def add_item(list, item_name, quantity = 0)
  list[item_name] = quantity
  list
end


# Method to remove an item from the list
# input: Hash, item to be removed
# steps:
 # IF item is in list
 # Remove item
 # IF item is not in list
 # Print error message
# output: Updated Hash
def remove_item(list, item)
  if list[item] == nil
    puts 'Item does not exist, sorry'
  else
    list.delete(item)
  end
  list
end

# Method to update the quantity of an item
# input: list, Hash Key(Item Name), quantity
# steps:
 # IF item is in the list
 # 	Update item quantity
 # IF item is NOT in the list
 # 	Print update message
 # 	Update list
# output: Updated Hash
def update_item_quantity(list, item, quantity)
  if list[item] == nil
    puts "Adding new item to list..."
    list[item] = quantity
  else
    list[item] = quantity
  end
  list
end

# Method to print a list and make it look pretty
# input: list
# steps:
 # Loop over list, printing items and values in a readable context
# output: Output a readable string containing keys and values for each item.
def print_list(list)
	puts "-" * 10
	list.each do |item, quantity|
		puts "#{item}: #{quantity}"

	end
	puts "-" * 10
end

# RELEASE 2 (TEST YOUR SOLUTION)
new_grocery_list = create_list("")
add_item(new_grocery_list, "Lemonade", 2)
add_item(new_grocery_list, "Tomatoes", 3)
add_item(new_grocery_list, "Onions", 1)
add_item(new_grocery_list, "Ice Cream", 4)

#puts new_grocery_list

remove_item(new_grocery_list, "Lemonade")

#puts new_grocery_list

update_item_quantity(new_grocery_list, "Ice Cream", 1)

#puts new_grocery_list

print_list(new_grocery_list)

# REFLECTION

# 1. I learned, first and foremost, that pseudocode can include a technical description
#    of method inputs and outputs, but should explain it's goals in plain English in
#    between.  Also that pseudocode templates can be very helpful.
# 2. In my opinion a hash was the only real choice.  Since each item needed an attached
#    value by prescription of it being a grocery list, the key/value format of hashes
#    was perfect.
# 3. A method returns whatever the last line of the method returns.
# 4. Any globally available object.
# 5. By having methods return the value you wish to feed to another method and then
#    assigning a specfic method call to a variable to give the next method.
# 6. I've definitely solidified my comfort with how to pass info from method to method.
#    Still unclear to me is the exact scope relationship of objects between methods and
#    variables inside and outside them. 








# PERSONAL TEST CODE 

# list = create_list('apples pears oranges')
# puts list

# puts 'add_item'
# puts add_item(list, 'banana')
# puts add_item(list, 'carrot', 3)

# puts 'remove_item'
# puts remove_item(list, 'apples')


# puts 'update_item_quantity'
# puts update_item_quantity(list, 'banana', 2)

# puts "print_list"
# print_list(list)
