=begin

Write this function

f(n,m) = (from i=1 to n)∑i%m

for i from 1 to n, do i % m and return the sum

f(n=10, m=5) // returns 20 (1+2+3+4+0 + 1+2+3+4+0)
You'll need to get a little clever with performance,
ince n can be a very large number

=end

# My solution
def f(n,m)
  x = ((m - 1) * m) / 2
  y = ((n % m) * (n % m + 1)) / 2
  puts  x * ((n / m).floor) + y
end

# Better solution
def f(n, m)
  x, y = n.divmod(m)
  x * m * (m - 1) / 2 + y * (y + 1) / 2
end
