=begin

Write a function that checks whether all elements in an array
are square numbers. The function should be able to take any
number of array elements.

Your function should return true if all elements in the array
are square numbers and false if not.

An empty array should return undefined / None / nil /false (for C).
You can assume that all array elements will be positive integers.

Examples:

is_square([1, 4, 9, 16]) --> true

is_square([3, 4, 7, 9]) --> false

is_square([]) --> nil

=end

# My solution
def is_square(arr)
  arr.empty? ? nil : arr.all?{|num| num == Math.sqrt(num).floor.pow(2)}
end

# Alternative solution
def is_square(arr)
  arr.length.positive? ? arr.all?{|x| Math.sqrt(x) % 1 == 0} : nil
end
