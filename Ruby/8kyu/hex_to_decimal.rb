# Complete the function which converts hex number (given as a string) to a decimal number.

# My solution
def hex_to_dec(hex_string)
  hex_string.hex
end

# Alternative solution
def hex_to_dec(hex_string)
  hex_string.to_i(16)
end
