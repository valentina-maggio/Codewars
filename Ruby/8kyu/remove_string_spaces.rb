# Simple, remove the spaces from the string, then return the resultant string.

# My solution
def no_space(x)
  x.gsub!(/ /, '')
  return x
end

# Alternative solution
def no_space(x)
  x.delete(' ')
end
