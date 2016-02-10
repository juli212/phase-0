# Leap Years

# I worked on this challenge with Jason.


# Your Solution Below

def leap_year?(checkyear)
  if checkyear.to_i % 400 == 0
  p true
  elsif
  checkyear.to_i % 100 == 0
  p false
  elsif
  checkyear.to_i % 4 == 0
  p true
  else
  p false
  end
end