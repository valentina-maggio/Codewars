=begin

Description:

Remove all exclamation marks from the end of sentence.

Examples

remove("Hi!") === "Hi"
remove("Hi!!!") === "Hi"
remove("!Hi") === "!Hi"
remove("!Hi!") === "!Hi"
remove("Hi! Hi!") === "Hi! Hi"
remove("Hi") === "Hi"

=end

# My solution
def remove(s)
  s.gsub(/\!+\z/, '')
end

# Alternative solution
def remove(s)
  s.gsub(/!*$/,'')
end
