=begin

Create a function that takes 2 integers in form of a string
as an input, and outputs the sum (also as a string):

Example: (Input1, Input2 -->Output)

"4",  "5" --> "9"
"34", "5" --> "39"
"", "" --> "0"
"2", "" --> "2"
"-5", "3" --> "-2"

Notes:

If either input is an empty string, consider it as zero.

Inputs and the expected output will never exceed the signed
32-bit integer limit (2^31 - 1)

=end

# My solution
def sum_str(a = 0, b = 0)
  (a.to_i + b.to_i).to_s
end

# Alternative solution
def sum_str(a, b)
  [a, b].map(&:to_i).sum.to_s
end
