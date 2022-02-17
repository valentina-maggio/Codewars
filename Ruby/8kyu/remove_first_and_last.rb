=begin

It's pretty straightforward. Your goal is to create a function that
removes the first and last characters of a string. You're given one parameter,
the original string.
You don't have to worry with strings with less than two characters.

=end

# My solution
def remove_char(s)
  s[1..s.length-2]
end

# Better solution
def remove_char(s)
  s[1...-1]
end
