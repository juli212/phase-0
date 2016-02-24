# Your Names
# 1) Wesley El-Amin
# 2) Julia Giraldi

# We spent [2] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  

  
  # defining a method that takes 2 arguments and compares them to an existing hash library
# error counter = 3
  
  unless library.has_key?(item_to_make)
    raise ArgumentError.new("{#item_to_make} is not a valid input")
  end

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  suggested_portion = num_of_ingredients / serving_size
  suggested_item = []
  if remaining_ingredients > 0
    library.each { |key, value| suggested_item.push(key) if value <= remaining_ingredients}
  end

  
  #key(remaining_ingredients)
# when the remaining ingredients are equal to zero, the method returns the amount to make.
    
# when the remaining ingredients is not equal to zero, the method returns the amount to make and the leftover ingredients. Also, there should be a feature that tells you what to make with the leftover ingredients.
  
  
  if remaining_ingredients == 0
    return "Calculations complete: Make #{suggested_portion} of #{item_to_make}"
  else
    return "Calculations complete: Make #{suggested_portion} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items:  #{suggested_item.join(", ")}" 
  end
end





p serving_size_calc("pie", 7)
p serving_size_calc("pie", 83)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
#p serving_size_calc("pizza", 5)



#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
Did you learn any new methods? What did you learn about them?
What did you learn about accessing data in hashes? 
What concepts were solidified when working through this challenge?
=end
