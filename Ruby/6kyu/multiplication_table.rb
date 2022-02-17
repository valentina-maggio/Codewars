=begin

Your task, is to create NxN multiplication table, of size provided in
parameter.

for example, when given size is 3:

1 2 3
2 4 6
3 6 9

for given example, the return value should be: [[1,2,3],[2,4,6],[3,6,9]]

=end

# My solution
def multiplication_table(size)
multi_table = Array.new

for i in (1..size)
  multi_table << (1..size).to_a.map! { |num| num * i }
  i + 1
end

multi_table
end

# Better solution
def multiplicationTable(size)
  (1..size).map { |i| (i..size * i).step(i).to_a }
end
