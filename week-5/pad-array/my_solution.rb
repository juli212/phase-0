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
# 4. Reflection