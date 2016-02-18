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
puts "Do you want to add anything else? yes or no?"
answer = gets.chomp
def add_item(original_list, new_items, quantity, answer)
    original_list[new_items] = quantity.to_i
    if answer == "yes"
    while answer == "yes"
    puts "What item do you want to add to your list?"
    new_items = gets.chomp
    puts "How many do you want?"
    quantity = gets.chomp
    original_list[new_items] = quantity.to_i
    puts "Do you want to add anything else? yes or no?"
    answer = gets.chomp
  end
  else
   
 p original_list
end
end


complete_list = add_item(original_list, new_items, quantity, answer)


# Method to remove an item from the list
# input: the hash with all the items & the item to be removed
# steps: Access the item to be removed within the hash
      # Remove the item from the hash
      # Return the new hash to see that the item is gone
# output: the new hash with item removed
#=begin
puts "what would you like to remove?"
removed_item = gets.chomp
#puts "do you want to remove anything else? yes or no?"
#remove_answer = gets.chomp
def remove_item(complete_list, removed_item )
  #complete_list.delete(remove_item)
  complete_list.delete_if {|k| k == removed_item }
#  if remove_answer == "yes"
#    while remove_answer == "yes"
#      puts "what would you like to remove?"
#      remove_item = gets.chomp
#      p complete_list[remove_item] #complete_list.delete(remove_item)
#      puts "do you want to remove anything else? yes or no?"
#      remove_answer = gets.chomp
#    end
#  else
  p complete_list
  end


complete_list = remove_item(complete_list, removed_item )

# Method to update the quantity of an item
# input: updated hash list, item to be updated, and then new quantity
# steps: Access the item in the list update its quantity.
# output: Array with updated quantities

puts "which item do you want to update?"
updated_item = gets.chomp
puts "how many do you want?"
updated_number = gets.chomp

def update_quantity(complete_list, updated_item, updated_number)
  complete_list[updated_item] = updated_number.to_i

  p complete_list #This returns a value not an array
end

complete_list = update_quantity(complete_list, updated_item, updated_number)

# Method to print a list and make it look pretty
# input: updated grocery list
# steps: display each item on a separate line so looks like a list
# output: pretty list.

def print_list(complete_list)
  complete_list.each {|key, value| puts "you want #{value} #{key}" } #This is trying to run .each on a value
end

print_list(complete_list)
=begin
def method(create_list)
  puts "do you want to update your list? yes or no?"
  answer = gets.chomp
  if answer == 'yes' 
    puts "what item do you want to add to your list?"
    new_items = gets.chomp
    puts "How many do you want?"
    quantity = gets.chomp
    add_item(complete_list, )
  else
    print "bye"
  end
end

method(create_list)
=end



#ERICA
  # Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [1)split the string of items into an array 2) loop the array into the hash]
  # set default quantity to hash value
  # print the list to the console [can you use one of your other methods here?]
# output: [A hash where the key is an item and the value is a quantity]

# Method to add an item to a list
# input: item name and optional quantity
# steps: add item to hash as new key
#        add quantity to hash a new value
#        return confirmation
# output: confirmation of what was added, item & quantity

# Method to remove an item from the list
# input: Argument to id which item is to be removed
# steps: Delete item from the hash
# output: The item from the hash is removed
#         confirmation of removal

# Method to update the quantity of an item
# input: item and new quantity
# steps: Find item in hash and update the quantity value
# output: Confirmation of item and its new quantity

# Method to print a list and make it look pretty
# input: List name
# steps: Grab key and value and print them in orderly fashion
# output: The method should show the list of items and quantity

def create_list(list)
  list_arr=list.split(" ")
  # p list_arr
  list_hash ={}
  list_arr.each do |item|
    # p item
    list_hash[item] = 1
  end
  p list_hash
end

items = "carrots apples cereal pizza"
list = create_list(items)

def add_item(list_hash, new_item,quantity = 1)
  list_hash[new_item]=quantity

  puts "#{quantity} #{new_item} have been added"
end

add_item(list, "Pears", 3)
p list

def remove_item (list_hash, item)
  list_hash.delete("item")
  puts "#{item} have been removed"
end

remove_item(list, "apples")

def update_item(list_hash, item, quantity)
  list_hash[item]=quantity

  puts "new quantity of #{item} is #{quantity}"
end

update_item(list, "pizza", 4)

def print_list (list_hash)
  list_hash.each do |item, quantity|
    puts "Buy #{quantity} of #{item}"
  end
end

print_list(list)


# Reflection

# What did you learn about pseudocode from working on this challenge?
#   I learned that writing pseudocode that can be easily implemented can be time-consuming.
#   If we had more time, we would have made our pseudocode more detailed
#   and closer to code. But for the sake of time, we tried to hit on the major points.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
#   Using an array would have allowed for simple access to any sub-arrays. For example
#   if we had made the list array contain an array [item,quantity] at each index, we could
#   have accessed the sub-index pretty easily. The hash was a simple way to show the
#   relationship between the item and quantity, so that's why we went with it.

# What does a method return?
#   A method returns the last expression executed in the body

# What kind of things can you pass into methods as arguments?
#   You can pass ints, floats, strings, classes, arrays, hashes.

# How can you pass information between methods?
#   By saving the return value from one method into a variable (outside the method),
#   and then passing that variable into another method. As long as the variable is defined
#   outside of both the methods, it can be accessed by both of them by passing it in as
#   an argument.

# What concepts were solidified in this challenge, and what concepts are still confusing?
#   Definitely solidified saving return values into variables and passing them between
#   methods. Also got some good practice iterating over a hash.
