# Class Warfare, Validate a Credit Card Number


# I worked on this challenge With KariJean.
# I spent 3 hours on this challenge.

# Pseudocode

# Input: 16 digit number
# Output: true or false
# Steps: 
  # IF argument is not 16 digits, return argument error
  # otherwise split number into an array
# reverse array
# leave 1st index, double every other object
# turn array into string.
# separate the digits
# turn them into integers
# sum the integers
# IF its a multiple of 10, credit card is valid. return true
# ELSE, return false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

=begin
class CreditCard
  attr_accessor :number
  def initialize(number)
    number_array = number.to_s.split('')
    if number_array.length != 16
      raise ArgumentError.new('Credit card number is incorrect')
    else
    @number = number_array
    end
  end


  def check_card
    @number.reverse!
    @number.map! {|num| num.to_i}
    @number[1] = @number[1] * 2
    @number[3] = @number[3] * 2
    @number[5] = @number[5] * 2
    @number[7] = @number[7] * 2
    @number[9] = @number[9] * 2
    @number[11] = @number[11] * 2
    @number[13] = @number[13] * 2
    @number[15] = @number[15] * 2
    @number = @number.join.split('')
    @number.map! {|num| num.to_i}
    @sum = 0
    @number.each do |num|
      @sum = @sum + num
    end
    if @sum % 10 == 0
      print "your card works!"
      return true
    else
      print "your card is not valid"
      return false
    end
  end

end
=end




# Refactored Solution


class CreditCard
  attr_accessor :number
  def initialize(number)
    number_array = number.to_s.split('')
    if number_array.length != 16
      raise ArgumentError.new('Credit card number is incorrect')
    else
    @number = number_array
    end
  end
  

  def check_card
    @number.reverse!
    @number.map! {|num| num.to_i}
   
    
    @number.each_with_index do |num, i|
      if ( i % 2 ==1)
        @number[i] = num * 2
      end
    end

    #These both do the same as the iteration above:
    # @number.map!.with_index { | num, i| i.odd? ? num * 2 : num * 1 }
#******************************************************* 
    # @number.map!.with_index do |num, i|
    #   if i.odd?  
    #     num = num * 2
    #   else
    #     num = num
    #   end
    # end
    
    @number = @number.join.split('')
    @number.map! {|num| num.to_i}
    @sum = 0
    @number.each do |num|
      @sum = @sum + num
    end
    if @sum % 10 == 0
      print "your card works!"
      return true
    else
      print "your card is not valid"
      return false
    end
   end

end


# Reflection:

=begin
What was the most difficult part of this challenge for you and your pair?
	We struggled with iterating through an array and only modifying the objects with odd index numbers so we ended up writing out each one and deciding we could refactor it once we got a working code.

What new methods did you find to help you when you refactored?
	We refactored our iteration and came up with multiple solutions using #map!.with_index and #each_with_index that are all much simpler and more readable than our previous code. It was also interesting to learn that #length does not work for integers and when we used #size on our 16-digit integer it returned 8 so we had to turn it into a string and then use #length to validate the number of digits given in our number argument.

What concepts or learnings were you able to solidify in this challenge?
	I understand more about iterating with #each and that it can have an output with modified object values but the object you are iterating through does not actually get modified... So using map! is a good way to make sure the object actually gets changed. I also learned that if I cannot get an iteration to work, sometimes I can write it out in much uglier code just to get through the initial solution instead of getting stuck half way through. That way, I have a better idea of what my iteration will need to do and I do not waste time stressing about code that does not do what I want.
=end
