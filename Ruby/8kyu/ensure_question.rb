=begin

Given a string, write a function that returns the string with a question mark ("?")
appends to the end, unless the original string ends with a question mark,
in which case, returns the original string.

For example (Input --> Output)

"Yes" --> "Yes?"
"No?" --> "No?"

=end

# My solution
def ensure_question(s)
  s.match?(/\?$/) ? s : s+"?"
end

# Alternative solution
def ensure_question(s)
  s.end_with?("?") ? s : s+"?"
end
