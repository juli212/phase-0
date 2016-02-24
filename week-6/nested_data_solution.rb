# # RELEASE 2: NESTED STRUCTURE GOLF
# # Hole 1
# # Target element: "FORE"

# array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# # attempts:
# # ============================================================
# p array[1][1][2][0]



# # ============================================================

# # Hole 2
# # Target element: "congrats!"

# hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# # attempts:
# # ============================================================

# p hash[:outer][:inner]["almost"][3]

# # ============================================================


# # Hole 3
# # Target element: "finished"

# nested_data = {array: ["array", {hash: "finished"}]}

# # attempts:
# # ============================================================

# p nested_data[:array][1][:hash]

# # ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# number_array.map! {|number|
# 	if number.kind_of?(Integer)
# 		p number + 5
# 	else number.kind_of?(Array)
# 		p number.map! { |inner| inner + 5}
# 	end
# }

#Refactor:

array = []
number_array.flatten.each do |x|
	array.push x + 5 
	end
p array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# startup_names.map! {|name|
# 	if name.kind_of?(String)
# 		p name + "ly"
# 	else name.kind_of?(Array)
# 		p name.map! { |inner| 
# 			if inner.kind_of?(String) 
# 				 inner + "ly" 
# 			else inner.kind_of?(Array)
# 				 inner.map! { |x| x + "ly" }
# 			end
# 			}
# 	end
# }

#Refactor:

# startup_names.flatten!
# startup_names.map! { |name| p name + "ly" }


# Reflect:
=begin
What are some general rules you can apply to nested arrays?
	They can be confusing! I also often do not think the nested array had to be returned still as a nested array. In the bonus challenge, I flattened the nesting arrays and just added "ly" to the end of each element and it returns each name with the ly at the end... I think having a single layered array is actually a better result in this situation since it is just a list of names!

What are some ways you can iterate over nested arrays?
	You can iterate over the top layer and use .kind_of? to determine if an element is another array. Then you can iterate over each element in the second level array by writing a block of code inside the original iteration... and you can add a third level if there is a third level of nested arrays.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
	I liked the idea of using flatten in the bonus but I am not sure if it would work in a situation where I had to return nested arrays.
	Also did not know about the .kind_of?() method but it is very useful when iterating through nested arrays. Other than that, I just used .map! to modify array objects.
=end
