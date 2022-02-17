=begin

Complete the solution so that it reverses all of the
words within the string passed in.

Example:

"The greatest victory is that which requires no battle" -->
"battle no requires which that is victory greatest The"

=end

# My solution
def solution(sentence)
  sentence.split.reverse.join(' ')
end

# Alternative solution
def solution(sentance)
  sentance.split(/\s+/).reverse.join(' ');
end
