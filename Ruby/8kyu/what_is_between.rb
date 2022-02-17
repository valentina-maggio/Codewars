=begin

Complete the function that takes two integers (a, b, where a < b) and return
an array of all integers between the input parameters, including them.

For example:

a = 1
b = 4
b = 4
--> [1, 2, 3, 4]

=end

# My solution
def between(a, b)
  array = []
  (a..b).each {|num| array << num}
  return array
end

# Better solution
def between(a, b)
  (a..b).to_a
end
