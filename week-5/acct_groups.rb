# input: array of students
# mvp output: arrays of 3-5 students
# Pseudocode:
# create array of 57 students
# divide array into subarrays with length of 5
	# if last subarray has length of at least 3, return array of subarrays.
	# if last subarray has length less than 3, take two from the second to last subarray. Then return array of subarrays
	
	# Pseudocode for refactoring:
	# if remainder is 0 or 4, return array of subarrays
	# if remainder is 3, take last object from second-to last subarray and add it to last subarray so last two subarrays have length of 4
	# if remainder is 2, take last object from second-to-last subarray and last object from third-to-last subarray. Add them to last subarray so last three subarrays have length of 4
	# if remainder is 1, take last object from second-to-last subarray and last object from third-to-last subarray and last object from forth-to-last subarray. Add them to last subarray so last four subarrays have length of 4

=begin
# Initial Solution:

student_array = (1..56).to_a

def group_students(student_array)
	group_array = student_array.each_slice(5).to_a
	if student_array.length % 5 == 0 || student_array.length % 5 > 2
		p group_array
	elsif student_array.length % 5 < 3
		while group_array.last.length < 3
			last_group = group_array[-1]
			second_group = group_array[-2]
			moving_student = second_group[-1]
			second_group.pop
			last_group.push moving_student
		end
		p group_array
	end
end
group_students(student_array)

#*********************Random Extra Code pieces**********************
#p group_array.last
#group_array.each do |group|
#	p "#{group} has #{group.size} people. "
#end
#p last_group



#array = student_array.each_slice(5).to_a
#p array

=begin
def group_students (student_array)
	array = []
	if student_array.length % 5 == 0
		array << student_array.each_slice(5).to_a
		p array
	elsif student_array.length % 5 == 2
		if student_array.length > 12
			return student_array.each_slice(5).to_a
		else
			return student_array.each_slice(4).to_a
		end
	elsif student_array.length % 5 == 1
		if student_array.length > 16
			return student_array.each_slice(5).to_a
		else
			return student_array.each_slice(4).to_a
		end
	end
end

=end
#******************************************************************
# Refactored Solution:

student_array = (1..57).to_a

def group_students(student_array)
	group_array = student_array.each_slice(5).to_a
	last_group = group_array[-1]
	second_last_group = group_array[-2]
	third_last_group = group_array[-3]
	forth_last_group = group_array[-4]

	if student_array.length % 5 == 0 || student_array.length % 5 == 4
		p group_array
	end
	if student_array.length > 15
		if student_array.length % 5 == 3
			moving1 = second_last_group[-1]
			second_last_group.pop
			last_group.push moving1
			p group_array
		elsif student_array.length % 5 == 2
			moving1 = second_last_group[-1]
			moving2 = third_last_group[-1]
			second_last_group.pop
			third_last_group.pop
			last_group.push moving1 
			last_group.push moving2
			p group_array
		elsif student_array.length % 5 == 1
			moving1 = second_last_group[-1]
			moving2 = third_last_group[-1]
			moving3 = forth_last_group[-1]
			second_last_group.pop
			third_last_group.pop
			forth_last_group.pop
			last_group.push moving1 
			last_group.push moving2
			last_group.push moving3
			p group_array
		end
	else
		
		p group_array
	end
end

group_students(student_array)


=begin
Reflection:
What was the most interesting and most difficult part of this challenge?
I actually got very stuck on breaking up the initial array into subarrays of 5. I still think there is a much better option than what I used but I could not figure it out. I also did not have enough time to refactor my code as much as I wanted. I definitely improved the results I got when I refactored but it is not easy to read because I have so many variables and it is complicated to follow.
Do you feel you are improving in your ability to write pseudocode and break the problem down?
Yes. I am able to think in more specific steps but I still do not think I break things down into small enough pieces. I often go back while I am writing my code and add detail to my pseudocode or tweak it slightly because I've realized my original ideas were slightly off.
Was your approach for automating this task a good solution? What could have made it even better?
I definitely could add in some looping if I had more time and I think there is a better way to break up the array into subarrays. I was stuck for a while on how to call the individual objects in each subarray and how to refer to each subarray as an array. The indexing just kind of slipped my mind but I spoke with someone else in the cohort after I had been stuck for a while and they reminded me I can just refer to them by index number. Duh.
What data structure did you decide to store the accountability groups in and why?
An array of subarrays. I thought it would be a nice way to display the answer since each group is clearly separated from the others when it is returned.
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
The only method I learned was the .each_slice() which I had to look up after being stuck on breaking up the array into subarrays for quite a while.
I need to work on my understanding of enumerables. I do not really get what they are but I am thinking I will go back and reread the chapter in Well-Grounded Rubyest and see if that makes a difference. I just need to spend more time overall coding since there are a lot of methods that I just do not really remember yet. I will probably make myself a cheat sheet just so that I have a quick place to reference for myself written with definitions and examples that make sense to me.
=end