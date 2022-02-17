# Write a function that returns a string in which firstname is swapped with last name.
# name_shuffler('john McClane'); => "McClane john"

# My solution
def name_shuffler(str)
  str.split.reverse.join(' ')
end

# Alternative solution
def name_shuffler(str)
    "#{str.split[-1]} #{str.split[0]}"
end
