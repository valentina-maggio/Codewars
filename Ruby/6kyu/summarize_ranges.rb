=begin

Given a sorted array of numbers, return the summary of its ranges.

Examples

summary_ranges([1, 2, 3, 4]) == ["1->4"]
summary_ranges([1, 1, 1, 1, 1]) == ["1"]
summary_ranges([0, 1, 2, 5, 6, 9]) == ["0->2", "5->6", "9"]
summary_ranges([0, 1, 2, 3, 3, 3, 4, 5, 6, 7]) == ["0->7"]
summary_ranges([0, 1, 2, 3, 3, 3, 4, 4, 5, 6, 7, 7, 9, 9, 10]) ==
["0->7", "9->10"]
summary_ranges([-2, 0, 1, 2, 3, 3, 3, 4, 4, 5, 6, 7, 7, 9, 9, 10, 12]) ==
["-2", "0->7", "9->10", "12"]

=end

# My solution
def summary_ranges(nums)
  arr = nums.uniq.chunk_while { |a, b| b == a + 1}
  output = []
  arr.each { |array| array.length > 1 ? output << "#{array.first}->#{array.last}" : output << array.first.to_s }
  return output
end

# Better solution
def summary_ranges(nums)
  nums.uniq.slice_when { |i, j| j - i > 1 }.map { |chunk|
    chunk.one? ? chunk.first.to_s : "#{chunk.first}->#{chunk.last}"
  }
end
