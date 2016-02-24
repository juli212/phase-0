#Attr Methods

# I worked on this challenge by myself.

# I spent 1 hours on this challenge.

# Pseudocode

# Input: my name
# Output: a greeting with my name in it
# Steps:
  # Define NameData class
  	# initialize with @name set to my name
  # Define Greetings class 
  	# Initialize with an instance of NameData class

class NameData
	def initialize
		@name = "Julia"
	end

	def method
		puts "Hello, #{@name}! It is lovely to see you today!"
	end
end


class Greetings
	def initialize
		@namedata = NameData.new
	end
	def hello
		puts @namedata.method
	end
end

greet = Greetings.new
greet.hello

# Reflection
=begin
Release 1:
What are these methods doing?
	They are in a class called Profile and they are returning values of instance variables @age, @name, @occupation which hold information about each instance of Profile. The methods also allow us to change the values of an instance variable for each instance of the class by running methods that give the instance variable a new value.
How are they modifying or returning the value of instance variables?
	They return the value with p because they are set equal to them. They modify the value by writing methods that take 1 argument which replaces the old value of an instance variable with the new argument.

Release 2:
What changed between the last release and this release?
	One of the methods has been removed. There is now an attribute reader defined for the class instead.
What was replaced?
	The method what_is_age has been removed and replaced with attr_reader :age.
Is this code simpler than the last?
	Yes. The attr_reader replaces 3 lines of code with 1 line that defines the instance variables. They can be used in the exact same way now with less code written.

Release 3:
What changed between the last release and this release?
	an attr_writer was added and a defined method was removed from the class
What was replaced?
	The method change_my_age was replaced by attr_writer :age
Is this code simpler than the last?
	Yes, it replaces another 3 lines of code with 1 line of code without changing how the code functions at all.

Reflection:
What is a reader method?
	when a reader method is defined, it allows a method to see the value of an instance variable outside of the class it is defined in.
What is a writer method?
	When a writer method is defined, it allows a method to change the value of an instance variable outside of the class it is defined in
What do the attr methods do for you?
	Simplify code.
Should you always use an accessor to cover your bases? Why or why not?
	Sometimes you do not want an instance variable to be accessible outside of a class. Then they should not be used. 
What is confusing to you about these methods?
	Nothing yet, it has been pretty simple so far. 
=end