=begin

Write a function that doubles every second integer in a list, starting from the left.

Example:

For input array/list :

[1,2,3,4]

the function should return :

[1,4,3,8]

=end

# My solution
def double_every_other(num_array)
  num_array.length <= 1 ? num_array : num_array.map.each_with_index {|num, idx| idx.odd? ? num * 2 : num}
end

# Better solution
def double_every_other(num_array)
  num_array.map.with_index{|x, i| i.odd? ? x * 2 : x}
end
