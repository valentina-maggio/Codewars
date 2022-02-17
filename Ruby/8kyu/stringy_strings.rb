=begin

write me a function stringy that takes a size and returns a
string of alternating '1s' and '0s'.

the string should start with a 1.

a string with size 6 should return :'101010'.

with size 4 should return : '1010'.

with size 12 should return : '101010101010'.

The size will always be positive and will only use whole numbers.

=end

# My solution
def stringy(size)
  array = Array.new(size)
  (0...array.size).each{|i| i.even? ? array.push(1) : array.push(0) }.join('')
end

# Better solution
def stringy(size)
  (1..size).map { |i| i.even? ? '0' : '1' }.join('')
end
