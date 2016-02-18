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
  end
p grocery_list
end

original_list = create_list(items)

# Method to add an item to a list
# input: new item name and default of 1 the original list
# steps: For each new item and quanity we will add the item to the list
# output: the new hash with additional items
# puts "What item do you want to add to your list?"
# new_items = gets.chomp
# puts "How many do you want?"
# quantity = gets.chomp

puts "Do you want to add anything else? yes or no?"
add_answer = gets.chomp
def add_item(original_list, add_answer)
     if add_answer == "yes"
        while add_answer == "yes"
          puts "What item do you want to add to your list?"
          new_items = gets.chomp
          puts "How many do you want?"
          quantity = gets.chomp
          original_list[new_items] = quantity.to_i
          puts "Do you want to add anything else? yes or no?"
          add_answer = gets.chomp
      end
      p original_list
    elsif add_answer == "no"
        p original_list
    else
      puts "Sorry I don't understand. Please say 'yes' or 'no'."
    end
end

complete_list = add_item(original_list, add_answer)

# Method to remove an item from the list
# input: the hash with all the items & the item to be removed
# steps: Access the item to be removed within the hash
     # Remove the item from the hash
     # Return the new hash to see that the item is gone
# output: the new hash with item removed

# puts "What item would you like to remove from the list?"
# remove_item = gets.chomp
puts "Do you want to remove any items from your list else? yes or no?"
remove_answer = gets.chomp
def remove_item(complete_list, remove_answer )
    if remove_answer == "yes"
        while remove_answer == "yes"
          puts "What would you like to remove?"
          remove_item = gets.chomp
          complete_list.delete_if {|key, value| key == remove_item }
          p complete_list
          puts "do you want to remove anything else? yes or no?"
          remove_answer = gets.chomp
        end
    elsif remove_answer == "no"
      p complete_list
    else
      puts "Sorry I don't understand. Please say 'yes' or 'no'."
    end
    p complete_list
  end


complete_list = remove_item(complete_list, remove_answer )

# Method to update the quantity of an item
# input: updated hash list, item to be updated, and then new quantity
# steps: Access the item in the list update its quantity.
# output: list with updated quantities

# puts "Which item do you want to update?"
# updated_item = gets.chomp
# puts "How many do you want now?"
# updated_number = gets.chomp
# update_number_value = updated_number.to_i
puts "Do you want to update the quanity of your items? yes or no?"
update_quant_ans = gets.chomp
def update_quantity(complete_list, update_quant_ans)
  if update_quant_ans == "yes"
    while update_quant_ans == "yes"
      puts "Which item do you want to update?"
      updated_item = gets.chomp
      puts "How many do you want now?"
      updated_number = gets.chomp
      puts "Do you want to update the quanity of your items? yes or no?"
      update_quant_ans = gets.chomp
      complete_list[updated_item] = updated_number
      p complete_list
    end
  else
    p complete_list
end
p complete_list
end

update_quantity(complete_list, update_quant_ans)



# Method to print a list and make it look pretty
# input: updated grocery list
# steps: display each item on a separate line so looks like a list
# output: pretty list.

def print_list(complete_list)
    puts "Here is a list of things of things you need to buy and the amount needed:"
    complete_list.each {|key, value| puts "#{value} #{key}" }
end

print_list(complete_list)

=begin
What did you learn about pseudocode from working on this challenge?
Pseudocode can be extremely helpful but difficult to write well. It can help structure your code and methods but needs to be detailed and simple or it can cause confusion when you try to follow it.

What are the tradeoffs of using Arrays and Hashes for this challenge?
We did not even really consider using an array, just mentioned them and then moved on directly to hashes. I think an array would have been more complicated since it would have been a 2-layer array with each key-value pair being replaced by an array of two objects. For me at least, using a hash was easier to picture in my head and make sense of when coding.

What does a method return?
In Ruby, methods return last evaluated line of code.

What kind of things can you pass into methods as arguments?
You can pass objects like variables, arrays, hashes, numbers(integers and floats), strings, etc.

How can you pass information between methods?
We found that setting the output of one method equal to a variable worked since then you could use that variable as one of the arguments in the following method.

What concepts were solidified in this challenge, and what concepts are still confusing?
I understand how to use a method that has been set equal to a variable inside another method but I believe there must be a more efficient way of doing this than we came up with. I think assigning variables to the outputs of all the methods is not efficient and can get quite confusing, especially if they are not named very well.
I am still slightly unsure of how my code works overall but my pair and I plan to go back through it to make sure we really understand what is going on.

=end