=begin

Welcome. In this kata, you are asked to square every digit
of a number and concatenate them.

For example, if we run 9119 through the function, 811181 will
come out, because 92 is 81 and 12 is 1.

Note: The function accepts an integer and returns an integer

=end

# My solution
def square_digits num
  num.to_s.chars.collect!.each{|n| n.to_i.pow(2) }.join.to_i
end

# Better solutions
# 1
def square_digits num
  # code goes here
  num.to_s.chars.map{|x| x.to_i**2}.join.to_i
end

# 2
def square_digits num
  num.digits.map { |d| d*d } .reverse.join.to_i
end
