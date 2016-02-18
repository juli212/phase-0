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
# IF integer is GREATER THAN 0, return nil
# or IF integer is LESS THAN 100, return integer turned into a string
# ELSE, add a comma every three characters, starting with last character:
	# separate integer into array of single digits
	# Reverse array
	# Insert comma as 4th object
	# Continue to add comma as every 4th object in the array
	# UNTIL one of the last 4 objects is a comma
	# End
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
#=begin
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

p separate_comma(36243638445)
#=end

# 2. Refactored Solution

# Honestly could not find a way to refactor this without making it more complicated...or using regular expressions. I know there are other ways to do similar things like split the string of integers into groups of 3, then join them into an array with commas but that did not seem any simpler than what my code does. So my solution below involves regex's and is obviously simpler than my original code...

def separate_comma(integer)
	if integer < 0
		return nil
	elsif integer < 1000
		return integer.to_s
	else
		array = integer.to_s.reverse.scan /.{1,3}/
	end
		return array.join(',').reverse
end


# 3. Reflection
=begin

What was your process for breaking the problem down? What different approaches did you consider?
	first I wanted to eliminate the simple things like a negative integer and then any number under 1000 which would not require any comma. Without those distractions, it is easier to focus on the part I still need to solve. Basically, I had to break it down into small enough pieces that I know how to solve but sometimes I am thinking a piece of the logic and forget to write it down since I already know it in my head and I just don't realize I have skipped it.
	At first I wanted to split the integer into strings of 3 numbers each which would all be contained in one array but that seemed more complicated to me and I decided I wanted to make every single number an individual string object in the array. After that, i could insert a comma every x number of ofjects.

Was your pseudocode effective in helping you build a successful initial solution?
	Yes. It helped me organize my thoughts and keep me on track when I got distracted looking things up that I forgot from the books. It also allowed me to think of things in smaller steps. Once I had "add a comma every three characters" I realized that it was not detailed enough and I procedded to dissect that concept until it became four or five separate steps.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
	My refactored code works kind of differently now but I also used regex's so I am not sure if that counts... In my refactored code, I used .scan to break up the string of numbers into strings of 3 which I put into an array. Then joined them back together with a comma separating each string of 3 numbers. But again, would not have known how to do this without regex. Nothing else that I found in Ruby docs would have made this any easier otherwise.

How did you initially iterate through the data structure?
	I turned the integer into an array with each character a separate string object inside the array. Then I reversed the array to add commas until one of the last 4 objects was a comma. I inserted commas starting at the 4th object array[3] and then increased that index number by 4 until the condition for the loop is met. Then join the array so that it becomes a string and print it in reverse (double reverse = non-reversed).
	
Do you feel your refactored solution is more readable than your initial solution? Why?
	Yes. Having one line of code is much simpler than my original solution and .split is pretty understandable, even to me! And I am really not familiar with regex's but it still makes perfect sense when I look at it. Despite this, I know we were not supposed to use regex's in our assignment and I do not think I could have found a refactored solution that was more readable than my initial solution without the regex's. I think my initial solution is pretty easy to follow and understand.
=end