=begin

You're writing code to control your town's traffic lights. You need a function to
handle each change from green, to yellow, to red, and then to green again.

Complete the function that takes a string as an argument representing the current
state of the light and returns a string representing the state the light should change to.

For example, update_light('green') should return 'yellow'.

Note: Use "" instead of '' in C++.

=end

# My solution
def update_light(current)
  current.include?('green') ? 'yellow' : current.include?('yellow') ? 'red' : 'green'
end

# Alternative solution
def update_light(current)
  {"green" => "yellow", "yellow" => "red", "red" => "green"}[current]
end
