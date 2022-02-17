=begin

For every good kata idea there seem to be quite a few bad ones!

In this kata you need to check the provided array (x) for good ideas 'good' and
bad ideas 'bad'. If there are one or two good ideas, return 'Publish!', if there
are more than 2 return 'I smell a series!'. If there are no good ideas, as is
often the case, return 'Fail!'.

=end

# My solution
def well(x)
   x.count("good") == 0 ? "Fail!" : x.count("good") > 2 ? "I smell a series!" : "Publish!"
end

# Alternative solution
def well(x)
  case x.count('good')
  when 0
    'Fail!'
  when (1..2)
    'Publish!'
  else
    'I smell a series!'
  end
end
