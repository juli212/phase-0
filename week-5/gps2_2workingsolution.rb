# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
 # [fill in any steps here]
 # set default quantity = 1
 # print the list to the console [can you use one of your other methods here?]
 # Get a list of items from the user and store it in the hash
 # Parse each time we will ask the user to specify the quanity, if none is provided then the default will be 1
# output: hash

puts "Give me a list of items you would like to buy seperated by a space"
items = gets.chomp



def create_list(items)
 grocery_list = Hash.new
 list = items.split(" ")
 list.each do |x|
   grocery_list[x] = 1
 p x
 end
p grocery_list
end

 original_list = create_list(items)


# Method to add an item to a list
# input: new item name and default of 1 the original list
# steps: For each new item and quanity we will add the item to the list
# output: the new hash with additional items
puts "What item do you want to add to your list?"
new_items = gets.chomp
puts "How many do you want?"
quantity = gets.chomp
def add_item(original_list, new_items, quantity)
  	original_list[new_items] = quantity.to_i
 p original_list
end


complete_list = add_item(original_list, new_items, quantity)


# Method to remove an item from the list
# input: the hash with all the items & the item to be removed
# steps: Access the item to be removed within the hash
      # Remove the item from the hash
      # Return the new hash to see that the item is gone
# output: the new hash with item removed
puts "what would you like to remove?"
remove_item = gets.chomp
def remove_item(complete_list, remove_item)
	complete_list.delete(remove_item)
	p complete_list
end

complete_list = remove_item(complete_list, remove_item)

# Method to update the quantity of an item
# input: updated hash list, item to be updated, and then new quantity
# steps: Access the item in the list update its quantity.
# output: list with updated quantities
puts "which item do you want to update?"
updated_item = gets.chomp
puts "how many do you want?"
updated_number = gets.chomp

def update_quantity(complete_list, updated_item, updated_number)
	complete_list[updated_item] = updated_number.to_i
	p complete_list
end

complete_list = update_quantity(complete_list, updated_item, updated_number)

# Method to print a list and make it look pretty
# input: updated grocery list
# steps: display each item on a separate line so looks like a list
# output: pretty list.

def print_list(complete_list)
	complete_list.each {|key, value| puts "you want #{value} #{key}" }
end

print_list(complete_list)
