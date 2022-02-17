=begin

Complete the solution so that it splits the string into pairs
of two characters. If the string contains an odd number of
characters then it should replace the missing second character
of the final pair with an underscore ('_').

Examples:

solution('abc') # should return ['ab', 'c_']
solution('abcdef') # should return ['ab', 'cd', 'ef']

=end

# My solution
def solution(str)
  str.length.odd? ? (str + "_").scan(/../) : str.scan(/../)
end

# Better solution
def solution str
  (str + '_').scan /../
end
