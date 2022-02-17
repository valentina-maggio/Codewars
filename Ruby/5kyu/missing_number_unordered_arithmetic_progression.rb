=begin

If you have not ever heard the term Arithmetic Progrossion, refer to:
http://www.codewars.com/kata/find-the-missing-term-in-an-arithmetic-progression/python

And here is an unordered version. Try if you can survive lists of MASSIVE numbers
(which means time limit should be considered). :D

Note: Don't be afraid that the minimum or the maximum element in the list is missing,
e.g. [4, 6, 3, 5, 2] is missing 1 or 7, but this case is excluded from the kata.

Example:

find([3, 9, 1, 11, 13, 5]) # => 7

=end

# My solution
def find(seq)
  seq.sort!
  (seq[0] + seq[-1]) * (seq.size + 1) / 2 - seq.sum
end

# Alternative solution
def find(seq)
  (seq.min + seq.max) * (seq.size + 1) / 2 - seq.sum
end
