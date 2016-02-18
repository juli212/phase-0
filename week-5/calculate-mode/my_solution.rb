# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution


def mode(obj_array)
  count = 0
  mode_array = []
  mode_count = 0
  i=0
  obj_array.each {
       count = obj_array.count(obj_array[i])    
  if count > mode_count
    mode_count = count
    mode_array = [ obj_array[i] ]
  elsif count == mode_count
    
    mode_array << obj_array[i] 
   
  end
     i += 1
  }
  p mode_array.uniq
end


# 3. Refactored Solution




# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
  we decided to go with an array since it seemed simpler to us than creating a hash. We discussed that since keys could not be repeated in an array, it could get confusing for us and wanted to stick with arrays for now.
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
  Yes. My pair was driving during the pseudocode portion of the exercise and she wrote the best pseudocode I have ever seen. By far. Better than any examples I have found. I was very impressed by her pseudocode and mentioned it to her two or three times at least! It was more detailed and broke the problems down into very small and doable steps while staying away from code-specific terms. I want to start writing pseudocode more like her in the future.
What issues/successes did you run into when translating your pseudocode to code?
  Once writing the code, we realized that one or two lines of our pseudocode were slightly wrong but we easily fixed them since the pseudocode was so simple and easy to follow and we knew exactly what changes to make and where. It was helpful to baiscally have a detailed list of steps to translate from english into basic ruby commands...definitely kept us from getting lost at all while trying to finish writing our code.
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
  We used .each to go through each object in the array and .count to count the number of times that object appeared and then when they were added to a new array, we used .uniq to remove any repetition from our new array before we printed it as the solution. 
  After we finished, we discussed how we could use a hash and assign each object in the array to a key and give each a value but figured it might actually end up getting more complicated than it already was, plus we just liked our code so much! In the end, we decided that refactoring it would not be beneficial. I am sure there is another solution that we just did not find...
=end