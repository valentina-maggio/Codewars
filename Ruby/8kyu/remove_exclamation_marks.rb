# Write function RemoveExclamationMarks which removes all
# exclamation marks from a given string.

# My solution
def remove_exclamation_marks(s) s.gsub("!","") end

# Alternative solution
def remove_exclamation_marks(s)
  s.delete('!')
end
