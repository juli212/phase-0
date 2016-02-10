puts 'Hello! What is for first name?'
first_name = gets.chomp
puts 'Now, what is your middle name?'
middle_name = gets.chomp
puts 'And finally... Your last name, please?'
last_name = gets.chomp
puts 'Hi ' + first_name + ' ' + middle_name + ' ' + last_name + ', I hope you are doing well today!'
puts
puts 'What is your favorite number?'
fav_num = gets.chomp.to_i + 1 
puts 'What a silly number!! How about a bigger, better number like ' + fav_num.to_s + ' instead?'

=begin
	
How do you define a local variable?
	variable_name = variable

How do you define a method?
	def method_name(parameter1, parameter2)

What is the difference between a local variable and a method?
	A variable is an object while a method is something that does an action to the variable/

How do you run a ruby program from the command line?
	ruby program_name.rb

How do you run an RSpec file from the command line?
	rspec rspec_file_name.rb

What was confusing about this material? What made sense?
	I kept overthinking my code and adding too much. Everything was so simple that when I ran the code with rspec and got no errors, I always thought my code was missing someething until I tested it. The most difficult thing for me was interpreting error messages and finding solutions (which usually just involved deleting a piece of my code).	

URL for 4.3.1: https://github.com/juli212/phase-0/blob/master/week-4/address/my_solution.rb
URL for 4.3.2: https://github.com/juli212/phase-0/blob/master/week-4/math/my_solution.rb

=end