=begin
The code provided is supposed replace all the dots . in the specified String str with dashes -

But it's not working properly.

Task

Fix the bug so we can all go home early.

Notes

String str will never be null.

=end

# My solution
def replaceDots(str)
  str.gsub('.', '-')
end

# Alternative solution
def replaceDots(str)
  str.tr('.', '-')
end
