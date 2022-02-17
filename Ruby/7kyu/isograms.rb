=begin

An isogram is a word that has no repeating letters, consecutive
or non-consecutive. Implement a function that determines whether
a string that contains only letters is an isogram. Assume the empty
string is an isogram. Ignore letter case.

Example: (Input --> Output)

"Dermatoglyphics" --> true
"aba" --> false
"moOse" --> false (ignore letter case)

=end

# My solution
def is_isogram(string)
  string.chars.all? { |l| string.downcase.count(l.downcase) == 1 }
end

# Better solution
def is_isogram(string)
  string.downcase.chars.uniq == string.downcase.chars
end
