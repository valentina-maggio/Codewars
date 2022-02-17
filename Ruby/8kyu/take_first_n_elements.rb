=begin

Create a method take that accepts a list/array and a number n, and returns a
list/array array of the first n elements from the list/array.

If you need help, here's a reference:

http://www.rubycuts.com/enum-take

=end

# My solution
def take list, n
  list.first(n)
end

# Alternative solution
def take list, n
  list.take(n)
end
