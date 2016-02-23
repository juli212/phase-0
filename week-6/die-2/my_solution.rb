# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# Pseudocode

# Input: array of strings
# Output: one of the random strings from the array
# Steps:
  # make new class called Die
  # initialize Die class with 1 argument: labels
  	# if the argument is an empty array, raise argument error
  	# otherwise define instance variable @labels equal to argument array (labels)
  	# also define instance variable @sides which is equal to the number of objects in the array (labels)
  # define method sides for the class Die
  	# when called, should return the number of sides which is the length of the array 
  # define method roll
  	#when called, should return a random side
  		# call shuffle method on array and return first object in array.


# Initial Solution

# class Die
#   def initialize(labels)
#   	if labels == []
#   		raise ArgumentError, "array is empty"
#   	else
#   		@labels = labels
#   		@sides = labels.count
#     end
#   end

#   def sides
#   	return @sides
#   end

#   def roll
#   	return @labels.sample
#   end
# end

 

# Refactored Solution

class Die
  def initialize(labels)
  	if labels == []
  		raise ArgumentError, "array is empty"
  	else
  		@labels = labels
    end
  end

  def sides
  	return @labels.count
  end

  def roll
  	return @labels.sample
  end
end

# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
	# No, it was structured the same, just used a different method to get the roll results and a different instance variable set equal to the number of objects in the array
# What does this exercise teach you about making code that is easily changeable or modifiable? 
	# If your code is well-written and structured, it takes very few modifications and changes to reuse it in order to solve a different problem. It can help save a lot of time and give you the beginnings to many solutions.
# What new methods did you learn when working on this challenge, if any?
	# I did not learn any new methods but I did use the sample method for the first time.
# What concepts about classes were you able to solidify in this challenge?
	# I understand defining instance variables better and what to set them to. The only problem I had was figuring out what to set my instance variables equal to at first but I played around with it until I got them right!