# Define a function that removes duplicates from an array of numbers and
# returns it as a result.
# The order of the sequence has to stay the same.

# My solution
def distinct(seq)
  seq.uniq
end

# Alternative solution
def distinct(seq)
  uniqseq = []
  seq.each do |x|
    if uniqseq.include?(x) == false
      uniqseq << x
    end
  end
  uniqseq
end
