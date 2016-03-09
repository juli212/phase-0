# I worked on this challenge by myself.
# This challenge took me < 1 hour.


# Pseudocode
# define method super_fizzbuzz that takes an array of integers as an argument.
# iterate over each integer and:
	# IF integer is divisible by 3 AND 5, replace with string "FizzBuzz" (destructive)
	# ELSE IF integer is divisible by 3, replace with string "Fizz" (destructive)
	# ELSE IF integer is divisible by 5, replace with string "Buzz" (destructive)
# Return same array with these new values. 


# Initial Solution

# def super_fizzbuzz(array)
#   array.map! do |num| 
#     if (num % 3 == 0 && num % 5 == 0)
#       num = "FizzBuzz"
#     else num = num
#     end
#     if (num % 3 == 0)
#       num = "Fizz"
#     else
#       num = num
#     end
#     if (num % 5 == 0)
#       num = "Buzz"
#     else num = num
#     end
#   end
#   p array
# end


# Refactored Solution

def super_fizzbuzz(array)
  array.map! do |num|
    num =
   		if (num % 3 == 0 && num % 5 == 0)
    	  "FizzBuzz"
   		elsif (num % 3 == 0)
      	"Fizz"
    	elsif (num % 5 == 0)
      	"Buzz"
    	else 
      	num
    	end
  	end
  p array
end

# Reflection
=begin
What concepts did you review or learn in this challenge?
	I reviewed iterating over an array and using the map! method to return a modified array.

What is still confusing to you about Ruby?
	Nothing in this exercise was confusing but it was a nice refresher since I have not written any ruby in a few days (feels like ages!)... I had slightly wrong syntax for a few minutes but I just broke down the problem and started more simply to figure out which parts I was writing wrong.

What are you going to study to get more prepared for Phase 1?
	I am planning to go through each review exercise and hopefully complete all of them. Then look over my previous assignments and review whichever ones I think I had difficulty with to make sure I am comfortable solving them now.
=end
