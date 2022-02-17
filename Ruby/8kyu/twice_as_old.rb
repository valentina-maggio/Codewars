=begin

Your function takes two arguments:

1. current father's age (years)
2. current age of his son (years)

Сalculate how many years ago the father was twice as old as his son
(or in how many years he will be twice as old).

=end

# My solution
def twice_as_old(dad, son)
  puts dad - (son * 2) > 0 ? dad - (son * 2) : (son * 2) - dad
end

# Better solution
def twice_as_old(dad, son)
    (dad - son * 2).abs
end
