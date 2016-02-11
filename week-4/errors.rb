# Analyze the Errors

# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# --- error -------------------------------------------------------

#{}"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# File name is errors.rb
# 2. What is the line number where the error occurs?
# Error is on ine 8
# 3. What is the type of error message?
# Syntax error
# 4. What additional information does the interpreter provide about this type of error?
# There was an unexpected '=' and it expected an end of input instead.
# 5. Where is the error in the code?
# Right at the beginning of the string 'Screw you guys'
# 6. Why did the interpreter give you this error?
# Line should have been: cartmans_phrase = "Screw you guys " + "I'm going home."

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# Line 35
# 2. What is the type of error message?
# NameError
# 3. What additional information does the interpreter provide about this type of error?
# south_park is undefined
# 4. Where is the error in the code?
# In the object south_park 
# 5. Why did the interpreter give you this error?
# because south_park is not defined anywhere

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# line 50
# 2. What is the type of error message?
#  NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# The undefined method is cartman
# 4. Where is the error in the code?
# In the object cartman
# 5. Why did the interpreter give you this error?
# Because there is no method

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# line 65, 69
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#  there is an argument when none are required
# 4. Where is the error in the code?
# in line 69 where ('I hate Kyle') should be removed
# 5. Why did the interpreter give you this error?
# 1 argument is provided for cartmans_phrase when none are accepted by the method

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# line 84, line 88
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# there should be an argument but there is not one
# 4. Where is the error in the code?
# in line 88 where no argument is provided after cartman_says but there should be one.
# 5. Why did the interpreter give you this error?
# no argument is provided for cartman_says when 1 argument is necessary



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# line 105, 109
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#  only one argument is given where two arguments are required.
# 4. Where is the error in the code?
# line 109, should be a second argument inside the () following 'A meteor the size of the earth is about to hit wyoming!'
# 5. Why did the interpreter give you this error?
# because the method requires two arguments lie and name but there was only one given.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# line 124
# 2. What is the type of error message?
# in TypeError
# 3. What additional information does the interpreter provide about this type of error?
# The string cannot be turned into an integer.
# 4. Where is the error in the code?
# in the order of number and then string. If the two were switched, the code would work
# 5. Why did the interpreter give you this error?
# 5 cannot be repeated 'Respect my authority!' number of times... but the string could be repeated 5 times if the two were switched.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# line 139
# 2. What is the type of error message?
# zero division error
# 3. What additional information does the interpreter provide about this type of error?
# an integer was divided by 0 which produced the error
# 4. Where is the error in the code?
# the numbers
# 5. Why did the interpreter give you this error?
# cannot divide an integer by an exact 0

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# line 155
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# it cannot load the file 'cartmans_essay.md'
# 4. Where is the error in the code?
# in the directory: file does not exist
# 5. Why did the interpreter give you this error?
# The file 'cartmans_essay.md' does not exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?
	The first one was most difficult for me at first (I am still not totally sure about it) but maybe that is because it is so simple. I also had trouble interpreting the ArgumentError because I was not sure which order the (1 for 2) or (2 for 1) was interpreted but after seeing a number of them, it is starting to make more sense!

How did you figure out what the issue with the error was?
	The names of the errors were pretty explanitory once you looked at them closely and revisited the code.

Were you able to determine why each error message happened based on the code?
	Yes. With the line numbers, error names, and simple code, it was not difficult to figure out why the messages were happening. I believe I could write solutions for all of them if timie permitted!

When you encounter errors in your future code, what process will you follow to help you debug?	
	I will read the error closely and find the line number in order to examine where the error might be. I will also read the error name and make sure I understand what it means. If not, I will probably google it in order to find a definition unless I found a typo or something easy to fix in my code.
=end 