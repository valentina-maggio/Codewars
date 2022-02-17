# Write a function that checks if a given string (case insensitive) is a palindrome.

# My solution
def is_palindrome str
  str.downcase.reverse == str.downcase ? true : false
end

# Better solution
def is_palindrome str
  str.casecmp?(str.reverse)
end
