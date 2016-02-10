# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def get_grade(grade)
  if grade.to_i >= 90 
    p "A"
  elsif grade.to_i >= 80 && grade.to_i <= 89
    p "B"
  elsif grade.to_i >= 70 && grade.to_i <=79
    p "C"
  elsif grade.to_i >= 60 && grade.to_i <= 69
    p "D"
  else grade.to_i < 60
    p "F"    
  end
end

 get_grade(99)
 get_grade(84)
 get_grade(78)
 get_grade(69)
 get_grade(59)
 get_grade(9)