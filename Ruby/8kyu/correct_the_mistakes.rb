=begin

Character recognition software is widely used to digitise printed texts.
Thus the texts can be edited, searched and stored on a computer.

When documents (especially pretty old ones written with a typewriter),
are digitised character recognition softwares often make mistakes.

Your task is correct the errors in the digitised text. You only have to
handle the following mistakes:

S is misinterpreted as 5
O is misinterpreted as 0
I is misinterpreted as 1

The test cases contain numbers only by mistake.

=end

# My solution
def correct(string)
  string.each_char {|letter|
      if letter == "0"
        string.gsub!(letter, "O")
      elsif letter == "5"
        string.gsub!(letter, "S")
      elsif letter == "1"
        string.gsub!(letter, "I")
      end}
end

# Better solution
def correct(string)
  string.tr('501','SOI')
end
