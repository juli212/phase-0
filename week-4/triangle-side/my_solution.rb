# I worked on this challenge with Jason.


# Your Solution Below

def valid_triangle?(a, b, c)
  if a + b > c && a + c > b && b + c > a && a > 0 && b > 0 && c > 0
    p true
  else
    p false
  end
end