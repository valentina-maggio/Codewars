=begin

In this kata you will create a function that takes in
a list and returns a list with the reverse order.

Examples

reverse_list([1,2,3,4]) == [4,3,2,1]
reverse_list([3,1,5,4]) == [4,5,1,3]

=end

# My solution
def reverse_list list
	list.reverse
end

# Alternative solution
def reverse_list list
  list.map.with_index{|num, idx| list[(list.length - 1) - idx] }
end
