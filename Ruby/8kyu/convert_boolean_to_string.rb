# Implement a function which convert the given boolean value into its string representation.
# Note: Only valid inputs will be given.

# My solution
def boolean_to_string(b)
  return b.to_s
end

# Alternative solution
def boolean_to_string(b)
  b ? "true" : "false"
end
