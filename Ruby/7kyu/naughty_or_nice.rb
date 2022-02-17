=begin

In this kata, you will write a function that receives an array of string
and returns a string that is either 'naughty' or 'nice'. Strings that
start with the letters b, f, or k are naughty. Strings that start with
the letters g, s, or n are nice. Other strings are neither naughty nor
nice.

If there is an equal amount of bad and good actions, return 'naughty'

Examples:

bad_actions = ['broke someone\'s window', 'fought over a toaster', 'killed a bug']
what_list_am_i_on(bad_actions)
#-> 'naughty'

good_actions = ['got someone a new car', 'saved a man from drowning', 'never got into a fight']
what_list_am_i_on(good_actions)
#-> 'nice'

actions = ['broke a vending machine', 'never got into a fight', 'tied someone\'s shoes']
what_list_am_i_on(actions)
#-> 'naughty'

=end

# My solution
def what_list_am_i_on(actions)
  output = []
  actions.each do |string|
    if string[0] == 'b' || string[0] == 'f' || string[0] == 'k'
      output << 'naughty'
    elsif string[0] == 'g' || string[0] == 's' || string[0] == 'n'
      output << 'nice'
    end
  end
  if output.count('naughty') > output.count('nice') || output.count('naughty') == output.count('nice')
    'naughty'
  else
    'nice'
  end
end

# Better solution
# 1
def what_list_am_i_on(actions)
  naughty = nice = 0
  actions.each do |str|
    if str.start_with?('b', 'f', 'k') then naughty += 1
    elsif str.start_with?('g', 's', 'n') then nice += 1
    end
  end
  nice > naughty ? 'nice' : 'naughty'
end

# 2
def what_list_am_i_on(actions)
  nice = actions.count{|a| a =~ /^[gsn]/i }
  ngty = actions.count{|a| a =~ /^[bfk]/i }
  nice > ngty ? 'nice' : 'naughty'
end
