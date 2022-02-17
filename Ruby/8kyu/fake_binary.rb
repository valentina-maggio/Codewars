# Given a string of digits, you should replace any digit below 5 with
# '0' and any digit 5 and above with '1'. Return the resulting string.

# My solution
def fake_bin(s)
  s.gsub(/[0-4]/,'0').gsub(/[5-9]/, '1')
end

# Alternative solution
def fake_bin(str)
  str.split('').map{ |x| x.to_i < 5 ? 0 : 1 }.join
end
