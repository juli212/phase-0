# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below


def longest_string(list_of_words)
	list_of_words.sort_by! do |x|
	x.length
	end
	p list_of_words.last
end

#def longest_string(list_of_words)
#	if list_of_words.empty?
#		p nil
#	else
#		longest = ""
#		i = 0
#		while i < list_of_words.length
#			if list_of_words[i].length > longest.length
#				longest = list_of_words[i]
#			end
#			i += 1
#		end
#		p longest
#	en
#end


# failed:
#def longest_string(list_of_words)
#  list_of_words.each.sort!.length
#  p list_of_words.last
#end