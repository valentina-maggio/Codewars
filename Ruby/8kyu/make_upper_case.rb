# Write a function which converts the input string to uppercase.

# My solution
def make_upper_case(str)
  str.upcase
end

# Alternative solution
def make_upper_case(str)
 p str.split("").map{|l|l.capitalize}.join
end
