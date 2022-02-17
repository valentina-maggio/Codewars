=begin

In this kata, your job is to return the two distinct highest values in a list.
If there're less than 2 unique values, return as many of them, as possible.
The result should also be ordered from highest to lowest.

Examples:

[4, 10, 10, 9]  =>  [10, 9]
[1, 1, 1]  =>  [1]
[]  =>  []

=end

# My solution
def two_highest(list)
  list.sort!.reverse!.uniq!
  return list[0..1]
end

# Better solution
def two_highest list
  list.is_a?(String) ? false : list.uniq.max(2)
end
