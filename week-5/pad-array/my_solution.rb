# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  if min_size == 0
    return array
  end
  while array.length < min_size
    array.push(value)
  end
  if array.length >= min_size
     return array
  end
end
#=begin
def pad(array, min_size, value = nil) #non-destructive
	if min_size == 0
		return [] + array
	end
  pad_size = min_size - array.length
  pad_size_array = Array.new(pad_size, value)
  third_array = array + pad_size_array
  if array.length >= min_size
     return [] + third_array
  else
   return third_array
  end
end
#=end

# 3. Refactored Solution
=begin
def pad!(array, min_size, value = nil) #destructive
  if min_size == 0 || (array.length) >= (min_size)
    return array
  end
  while array.length < min_size
    array.push(value)
end
end
=end
=begin
def pad(array, min_size, value = nil) #non-destructive
	if min_size == 0 
		return [] + array
	end
  pad_size = min_size - array.length
  pad_size_array = Array.new(pad_size, value)
  
  third_array = array + pad_size_array
   return third_array
end
=end

=begin
# 4. Reflection
Were you successful in breaking the problem down into small steps?
  Yes. Our pseudocode helped us think about individual steps that would help solve the problem as a whole. Having the individual steps makes it easier to think of more options when writing code and which would be the best.
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
  It took us quite a while but we came up with a few different options to try and when we would get stuck with one, we would move onto the next. In the end, we wound up going to office hours to ask about our non-destructive solution because we were missing something very basic that we just did not know about yet. I think our code was correct without adding empty arrays but would not pass the rspec test without them.
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
  Our initial destructive solution was successful but like I said, our non-destructive was missing some empty arrays which prevented it from passing the test. If we were just looking for the functionality, our code may have passed without adding the arrays but since we also needed it to pass the rspec test, adding the empty arrays was a huge game-changer.
When you refactored, did you find any existing methods in Ruby to clean up your code?
How readable is your solution? Did you and your pair choose descriptive variable names?
What is the difference between destructive and non-destructive methods in your own words?
=end