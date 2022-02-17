=begin

Complete the square sum function so that it squares each
number passed into it and then sums the results together.

For example, for [1, 2, 2] it should return 9 because
1^2 + 2^2 + 2^2 = 9.

=end

# My solution
def square_sum(numbers)
   numbers.empty? ? 0 : numbers.map{|num| num.pow(2)}.reduce(:+)
end

# Better solution
def squareSum(numbers)
  numbers.map {|n| n*n}.reduce(:+)
end
