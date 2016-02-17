# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? 
# A positive integer
# What is the output? (i.e. What should the code return?)
# A positive integer with comma separation
# What are the steps needed to solve the problem?
# if integer < 0, return nil
# else if integer < 100, return integer turned into a string
# else add a comma every three characters, starting with last character:
	# separate integer into array of single digits
	# comebine every 3 characters into string.
	# add , between each.
	# recombine into one string.

# this was like half way between my pseudocode and my code...
#	we have array of Numbers
#	reverse it
#	8 7 6 5 4 3 2 1 
#	array.reverse
#	x = 3
#	until (array[-2] = ",") || (array[-3] == ",") || (array[-4] == ",") 
#		array.insert(x, ",")
#return string

# 1. Initial Solution
def separate_comma(integer)
	if integer < 0
		return nil
	elsif integer < 1000
		return integer.to_s
	else
		x = 3
		array = integer.to_s.split('').reverse
		until (array[-2] == ",") || (array[-3] == ",") || (array[-4] == ",")
			array.insert(x, ",")
			x += 4
		end
		return array.join.reverse.to_s
	end
end

separate_comma(362436384)


# 2. Refactored Solution




# 3. Reflection
=begin

What was your process for breaking the problem down? What different approaches did you consider?
	first I wanted to eliminate the simple things like a negative integer and then any number under 1000 which would not require any comma. Without those distractions, it is easier to focus on the part I still need to solve. Basically, I had to break it down into small enough pieces that I know how to solve but sometimes I am thinking a piece of the logic and forget to write it down since I already know it in my head and I just don't realize I have skipped it.
	At first I wanted to split the integer into strings of 3 numbers each which would all be contained in one array but that seemed more complicated to me and I decided I wanted to make every single number an individual string object in the array. After that, i could insert a comma every x number of ofjects.

Was your pseudocode effective in helping you build a successful initial solution?
	Yes. It helped me organize my thoughts and keep me on track when I got distracted looking things up that I forgot from the books. It also allowed me to think of things in smaller steps. Once I had "add a comma every three characters" I realized that it was not detailed enough and I procedded to dissect that concept until it became four or five separate steps.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?


How did you initially iterate through the data structure?
	I turned the integer into an array with each character a separate string object inside the array. Then I reversed the array to add commas until one of the last 4 objects was a comma. I inserted commas starting at the 4th object array[3] and then increased that index number by 4 until the condition for the loop is met. Then join the array so that it becomes a string and print it in reverse (double reverse = non-reversed).
Do you feel your refactored solution is more readable than your initial solution? Why?

=end