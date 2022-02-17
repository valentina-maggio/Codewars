=begin

You get an array of numbers, return the sum of all of the positives ones.

Example [1,-4,7,12] => 1 + 7 + 12 = 20

Note: if there is nothing to sum, the sum is default to 0.

=end

# My solution
def positive_sum(arr)
  sum = 0
  arr.each{|n| if n > 0
    sum = sum + n
    end}
  return sum
end

# Better solution
def positive_sum(arr)
  arr.select{|x| x > 0}.reduce(0, :+)
end
