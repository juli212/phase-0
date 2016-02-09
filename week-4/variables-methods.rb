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