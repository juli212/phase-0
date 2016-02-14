# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with alana.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: sum of array of numbers
# Steps to solve the problem.
=begin
for each number +number.next

=end
# 1. total initial solution
=begin
def total(array)
	array.each do |number|
	total += number
end
end
=end

def total(array)
	sum = 0
	array.each do |number|
		sum = sum + number
	end
		return sum
end

#		while i < list_of_words.length
#			i += 1
=begin
def total(array)
    sum = array.each { |number| number + number..number[-1] } 
        
    
    return sum
   
end
=end

# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of strings
# Output: strings joined into 1 string
# Steps to solve the problem.


# 5. sentence_maker initial solution
def sentence_maker(array)
	array = array.join(" ")
	return array.capitalize.to_s + "."

end
# 6. sentence_maker refactored solution







