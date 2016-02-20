# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent 1.5 hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:
# Make new class called Die
# initialize the Die class with 1 argument (sides)
	# if argument (sides) is less than 1, raise argument error
	# otherwise define instance variable @sides equal to argument (sides)
# make a class variable num_of_die and set it equal to 0
# make a class variable num_sides and set it equal to 0
# define the method sides for the class Die.
	# when called, should display the number of sides of the object.
# define the method roll for the class Die.	
	# When called, it should return a random number from 1-num_sides


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
    	raise ArgumentError, "number of sides must be positive"
    else
    @sides = sides.to_i
	end
  end

  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end
end

#die1 = Die.new(7)
#die1.sides

# 3. Refactored Solution

# I am really not sure how to refactor this and make it less complicated.... unless there is a die-rolling method already?





# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
	An argument error is a message returned if the argument(s) given for a method are unacceptable. There can be too few, too many, or an invalid value (such as a negative number when the method requires a positive one). You would use one to tell someone that their arguments are off and also give a short hint for what they might do to fix it (ex: "number must be positive" or "wrong number of arguments: 2 for 1").
What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
	I used the rand method to generate a random number. The only difficulty I had using this method was with the range. At first, I tried just giving it a maximum number because I read that it would normally give a number between 0 and the maximum number but that did not work. When I swapped that out for a range, it worked perfectly!
What is a Ruby class?
	A Ruby class is an object that is also a type of object. For example, the Array class is an object but each Array inside the Array class is also an object.
Why would you use a Ruby class?
	Creating a class can help create and define objects of a specific type and can remove a lot of repetition since you only have to define the attributes that a class has once... If you were just creating individual objects, it would take much longer to give each individual object specific its variables and their values. You can also use instance variables within the class to compare a specific category of information across the whole class you have created.
What is the difference between a local variable and an instance variable?
	A local variable is defined inside a method and is only used inside that method. It does not exist outside of that method. An instance variable is can be used across methods, as long as they remain inside one object or instance. They hold different values for different objects.
Where can an instance variable be used?
	They can be used in different methods and kind of hold information about the object they are defined for. They are bound to an instance of a class and is available to every method of that object.
=end