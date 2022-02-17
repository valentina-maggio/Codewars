=begin

Given a string, capitalize the letters that occupy even indexes
and odd indexes separately, and return as shown below. Index 0
will be considered even.

For example, capitalize("abcdef") = ['AbCdEf', 'aBcDeF']. See
test cases for more examples.

The input will be a lowercase string with no spaces.

Good luck!

If you like this Kata, please try:

Indexed capitalization

Even-odd disparity

=end

# My solution
def capitalize(s)
   array = Array.new << s.chars.each_with_index.map {|char, index|
     if index % 2 == 0
       char.capitalize
     else
       char
     end }.join

   array << s.chars.each_with_index.map {|char, index|
     if index % 2 != 0
       char.capitalize
     else
       char
     end}.join
end

# Better solution
def capitalize(s)
  result = s.gsub /.{1,2}/, &:capitalize
  [result, result.swapcase]
end
