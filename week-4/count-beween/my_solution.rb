# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below
=begin
def count_between(list_of_integers, lower_bound, upper_bound)
	count = 0
	list_of_integers.each do |num, low, high|

		if  low.to_i <= num.to_i <= high.to_i
			count = count + 1
		
		end
		return count
	end
end

=end
=begin
def count_between(list_of_integers, lower_bound, upper_bound)
	if list_of_integers = []
		return 0
	else
	count = 0
	list_of_integers.each do |int|
		if int >= lower_bound  && int <= upper_bound
			count = count + 1
		end
		end
	return count
	end
end
=end
# THIS ONE:
def count_between(list_of_integers, lower_bound, upper_bound)
	if list_of_integers.empty? 
		return 0
	elsif lower_bound > upper_bound
		return 0
	else 
		count = 0
		list_of_integers.each do |num, low, high|
			if num.to_i < low.to_i || num.to_i > high.to_i
				count = count + 0
			else
				count = count + 1
			end 
		end
		return count
	end
end

