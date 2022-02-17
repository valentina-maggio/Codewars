=begin

Given a triangle of consecutive odd numbers:

             1
          3     5
       7     9    11
   13    15    17    19
21    23    25    27    29
...

find the triangle's row knowing its index (the rows are 1-indexed), e.g.:

odd_row(1)  ==  [1]
odd_row(2)  ==  [3, 5]
odd_row(3)  ==  [7, 9, 11]
Note: your code should be optimized to handle big inputs.

=end

# My solution
def odd_row(n)
  row = { n => [] }

  row.each_pair do |key, value|
    y = key * (key - 1) + 1
    value[0] = y
    for i in (1..key - 1)
      y += 2
      value[i] = y
      i += 1
    end
  end

 row[n]

end

# Better solution
def odd_row(n)
  (1..n).map {|i| (n-1)*n + 2*i-1}
end
