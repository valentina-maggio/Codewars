=begin

Complete the method/function so that it converts dash/underscore delimited
words into camel casing. The first word within the output should be capitalized
only if the original word was capitalized (known as Upper Camel Case, also often
referred to as Pascal case).

Examples

"the-stealth-warrior" gets converted to "theStealthWarrior"
"The_Stealth_Warrior" gets converted to "TheStealthWarrior"

=end

# My solution
def to_camel_case(str)
  if str.empty?
    return ''
  else
    return str.gsub!(/_|-/, " ").split.first + str[str.index(' ')+1 .. -1].split.map!{|w| w.capitalize}.join
  end
end

# Better solution
def to_camel_case(str)
  str.gsub(/[_-](.)/) {"#{$1.upcase}"}
end
