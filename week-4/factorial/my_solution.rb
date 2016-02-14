# Factorial

# I worked on this challenge [by myself, with: ].

#while number > 0


# Your Solution Below

=begin
does not work:
def factorial(number)
  if number == 0 
  	return 1
  end
  until number-1 == 1
  	return number ** (number-1)
  end
end
=end
def factorial(number)
  if number == 0 || number == 1
  	return 1
  elsif number > 1
  #  fac = number
    x = number
    while x > 1
      x = x - 1 
      number = number * x
    end
    return number
  else
    return nil
  end
end


=begin
does  not work:
def factrial(number)
	if numbeer == 0 
		return 1
	end
	until number-1 == 1 do |x|
		number ** (number-1)
=end
=begin 
def factorial(number)
	if number == 0
		return 1
	end
while number-1 > 0
	return number * (number-1)
end
end
=end