=begin

Complete the method so that it formats the words into a single comma
separated value.
The last word should be separated by the word 'and' instead of a comma.
The method takes in an array of strings and returns a single formatted
string.

Note:

* Empty string values should be ignored.
* Empty arrays or null/nil/None values being passed into the method
should result in an empty string being returned.

Example: (Input --> output)

['ninja', 'samurai', 'ronin'] --> "ninja, samurai and ronin"
['ninja', '', 'ronin'] --> "ninja and ronin"
[] -->""

=end

# My solution
def format_words(words)
  if words == "" || words == nil || words == [] || words == [""]
    ""
  else
    sentence = words.keep_if { |item| item != "" }
    sentence.length == 1 ? sentence.join("") : sentence.join(", ").gsub(/(.*),(.*)/, '\1 and\2')
  end
end

# Better solution
def format_words(words)
  words.nil? ? '' : words.reject(&:empty?).join(', ').gsub(/, (\w+)$/) { " and #{$1}" }
end
