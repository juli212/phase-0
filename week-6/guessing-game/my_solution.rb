# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an integer
# Output: high, low, or correct
# Steps:
  # define class guessing game
  # initialize class with instance variable @answer
  # define method guess with input guess
  	# if answer is larger than guess, return symbol low
  	# if answer is smaller than guess, return symbol high
  	# if answer is the same as guess, return symbol correct
  # define method solved? 
  	# if last guess returned correct, solved? returns true
  	# otherwise, solved? returns false


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @solved = false
#   end

#   def guess(guess)
#     @guess = guess
#     if @guess == @answer
#       @solved = :correct
#     elsif @guess > @answer
#       @solved = :high
#     elsif @guess < @answer
#       @solved = :low
#     end
#   end

#   def solved?
#     if @solved == :correct
#       true
#     else
#       false
#     end
#   end
# end



# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    if guess == @answer
      @solved = :correct
    elsif guess > @answer
      @solved = :high
    elsif guess < @answer
      @solved = :low
    end
  end

  def solved?
    @solved == :correct ? true : false
  end
end

# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
	Instance variables define the attributes an object can have while instance methods describe the behaviors an instance can have. 

When should you use instance variables? What do they do for you?
	Instance variables hold data across methods inside a class. They are useful because methods can access the values of instance variables from anywhere inside the class they are a part of.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
	In this challenge, I used mostly true/false statments which was pretty simple. I only really had trouble setting up my instance variables set to the correct things. In my solution, You start with the answer and use the high/low/correct symbols to comepare it to each guess. When the guess is equal to the correct symbol, it changes the solved? method's output from false to true.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
	Symbols are unique and can only appear once per class while two strings that look the same may actually be two different objects with the same value. The symbols are also effcient since otherwise we might have to make a hash with values or add attitional true/false statments for the methods inside GuessingGame to run.

=end
