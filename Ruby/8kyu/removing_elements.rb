=begin

Take an array and remove every second element from the array.
Always keep the first element and start removing with the next element.

Example:

["Keep", "Remove", "Keep", "Remove", "Keep", ...] --> ["Keep", "Keep", "Keep", ...]
None of the arrays will be empty, so you don't have to worry about that!

=end

# My solution
def remove_every_other(arr)
  arr.values_at(* arr.each_index.select {|i| i.even?})
end

# Alternative solutions
# 1
def remove_every_other(arr)
  arr.select.with_index { |_,idx| idx.even? }
end

# 2
def remove_every_other(arr)
  arr.each_slice(2).map(&:first)
end
