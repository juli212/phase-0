# Pad an Array

# I worked on this challenge with Brian.

# I spent 3 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
=begin
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
=end

# 3. Refactored Solution

def pad!(array, min_size, value = nil)
	return array.fill(value, array.length...min_size)
end

def pad(array, min_size, value = nil)
	return array.dup.fill(value, array.length...min_size)
end

=begin
Other failed attempts:
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
	I found some information about a .fill method and .dup which seem to work. The .fill works for the destructive method and .dup.fill works for the non-destructive method since using the .dup basically duplicates the array instead of changing it so it remains the same.
How readable is your solution? Did you and your pair choose descriptive variable names?
	The refactored solution is much nicer and shorter but it is difficult to tell what it is doing if you do not know what the .fill method does while our initial solution makes it much more obvious and is easier to follow the logic inside it.
	Our variables definitely could be more descriptive. For our array, we just called it array which would be confusing if the code was more complicated or if we had multiple arrays. We did name our other two variables well I think and since there is only one array, I think it is pretty obvious what array is referring to in this situation. I also do think our solution is pretty easy to read since a lot of our code is just defining variables for us to use.
What is the difference between destructive and non-destructive methods in your own words?
	Destructive methods make a permanent change to an object like an array or a hash so if you returned that object after running the method, it would be different than the original object. Non-destructive methods do not actually modify the object but instead, take that object and show you only parts of it or pretend to add objects to it. At the end of the method however, the original object would still be identical to the original.
=end