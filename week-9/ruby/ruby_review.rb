# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
	#Define function is_fibonacci? to take a number (num) as input
	# make new array with 0 and 1 as first and second objects.
	# IF num is equal to last number in array
		# return true
	# ELSE IF num is larger than the last number in the array
		# add the last object to the second to last object and make it the new last object of the array
		# Once num is LESS THAN or EQUAL TO last number in array
		# if num is equal to last number in array,
			# return true
		# else return false


# Initial Solution

# def is_fibonacci?(num)
#   fib_array = [0, 1]
#   if num == fib_array[-1]
#     p true
#     return true
#   elsif num > fib_array[-1]
#     until num <= fib_array[-1]
#       fib_array.push(fib_array[-1] + fib_array[-2])
#     end
#     p fib_array
#     if num == fib_array[-1]
#       p true
#       return true
#     else
#       p false
#       return false
#     end
#   end
# end



# Refactored Solution

def is_fibonacci?(num)
  fib_array = [0, 1]
  if num == fib_array[-1]
    return true
  elsif num > fib_array[-1]
    while num > fib_array[-1]
      fib_array.push(fib_array[-1] + fib_array[-2])
    end
    if num == fib_array[-1]
      return true
    else
      return false
    end
  end
end


# Reflection