=begin

Write a function called repeatStr which repeats the given
string string exactly n times.

repeatStr(6, "I") // "IIIIII"
repeatStr(5, "Hello") // "HelloHelloHelloHelloHello"

=end

# My solution
def repeat_str (n, s)
  s * n
end

# Alternative solution
def repeat_str (n, s)
  rtn=''
  n.times do |i|
    rtn+=s
  end
  return rtn
end
