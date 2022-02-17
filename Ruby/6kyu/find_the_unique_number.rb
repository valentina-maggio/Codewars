=begin

There is an array with some numbers. All numbers are
equal except for one. Try to find it!

find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55

It’s guaranteed that array contains at least 3 numbers.

The tests contain some very huge arrays, so think about performance.

This is the first kata in series:

Find the unique number (this kata)
Find the unique string
Find The Unique

=end

=begin
def find_uniq(arr)
  if arr[0] == arr[1]
   arr.uniq!.drop(1).each {|n| print n}
  else
   arr.uniq!.each {|n| print n}
  end
end
=end

# My solution
def find_uniq(arr)
  unique = Hash.new(0)
  arr.each { |n| unique[n] += 1 }
  unique.key(1)
end

# Better solutions
#1
def find_uniq(arr)
  arr.uniq.each { |x| return x if arr.count(x) == 1 }

#2
def find_uniq(arr)
  arr.uniq.min_by { |n| arr.count(n) }
end
