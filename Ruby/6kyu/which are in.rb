=begin

Given two arrays of strings a1 and a2 return a sorted
array r in lexicographical order of the strings of a1
which are substrings of strings of a2.

Example 1:

a1 = ["arp", "live", "strong"]

a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

returns ["arp", "live", "strong"]

Example 2:

a1 = ["tarp", "mice", "bull"]

a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

returns []

Notes:
* Arrays are written in "general" notation. See "Your Test Cases"
for examples in your language.
* In Shell bash a1 and a2 are strings. The return is a string
where words are separated by commas.
* Beware: r must be without duplicates.

=end

# My solution
def in_array(array1, array2)
arr = []
  array2.each do |word|
    array1.each do |word2|
      arr << word2 if word.include?(word2)
    end
  end
  arr.uniq.sort
end

# Better solution
def in_array(array1, array2)
  array1.select{|s| array2.any?{|w| w.include?(s) } }.sort
end
