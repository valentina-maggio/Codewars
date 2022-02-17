=begin

Create a function that takes a string as a parameter and does the following,
in this order:

1 .Replaces every letter with the letter following it in the alphabet (see note below)
2. Makes any vowels capital
3. Makes any consonants lower case

Note: the alphabet should wrap around, so Z becomes A

So, for example the string "Cat30" would return "dbU30" (Cat30 --> Dbu30 --> dbU30)

=end

# My solution
def changer(string)
  letters = string.split('').map!.each { |letter|
    if letter =~ /[A-Ya-y]/
      letter.succ.downcase
    elsif letter =~ /[Z-z]/
      letter = "a"
    else
      letter
    end
  }

  letters.map!.each { |ltr| ltr =~ /[aeiou]/ ? ltr.upcase : ltr}.join
end

# Better solutions
# 1
def changer(str)
  str.downcase.tr('a-z','b-za').tr('aeiou','AEIOU')
end

# 2
def changer(string)
  string.tr('aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ', 'bbccddEEffgghhIIjjkkllmmnnOOppqqrrssttUUvvwwxxyyzzAA')
end

# 3
def changer(string)
  string
    .downcase
    .tr('a-z', 'b-za')
    .gsub(/[aeiou]/) { |m| m.upcase }
end
