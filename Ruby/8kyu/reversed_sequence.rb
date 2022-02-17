# Build a function that returns an array of integers from n to 1 where n>0.
#
# Example : n=5 --> [5,4,3,2,1]

# My solution
def reverse_seq(n)
  sequence = Array.new
    (1..n).each {|num| sequence << num}
  sequence.reverse!
end

# Better solution
def reverse_seq(n)
  n.downto(1).to_a
end
