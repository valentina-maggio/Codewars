=begin

Write a function to convert a name into initials. This kata strictly takes
two words with one space in between them.

The output should be two capital letters with a dot separating them.

It should look like this:

Sam Harris => S.H
patrick feeney => P.F

=end

# My solution
def abbrev_name(name)
   name.upcase.split.map{|name| name.slice(0)}.join('.')
end

# Better solution
def abbrev_name(name)
  name.split.map { |s| s[0]}.join('.').upcase
end
