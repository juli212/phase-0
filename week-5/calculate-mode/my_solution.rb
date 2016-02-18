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
