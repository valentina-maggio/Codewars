=begin

Description:

Replace all vowel to exclamation mark in the sentence. aeiouAEIOU is vowel.

Examples

replace("Hi!") === "H!!"
replace("!Hi! Hi!") === "!H!! H!!"
replace("aeiou") === "!!!!!"
replace("ABCDE") === "!BCD!"

=end

# My solution
def replace(s)
  s =~ /[aeiou]|['AEIOU']/ ? s.gsub!(/['aeiou']|['AEIOU']/, '!') : s
end

# Better solutions
# 1
def replace(s)
  s.gsub(/([aeiou])/i, '!')
end

# 2
def replace(s)
  s.tr("aeiouAEIOU'","!")
end
