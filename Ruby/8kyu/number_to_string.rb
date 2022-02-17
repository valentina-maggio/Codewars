=begin

We need a function that can transform a number into a string.

What ways of achieving this do you know?

Examples:
123 --> "123"
999 --> "999"

=end

# My solution
def number_to_string(num)
  num.to_s
end

# Alternative solutions:
# 1
def numberToString(num)
  "#{num}"
end

# 2
def numberToString(num)
  String(num)
end
