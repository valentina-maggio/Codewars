=begin

Make a function that will return a greeting statement that
uses an input; your program should return, "Hello, <name>
how are you doing today?".

[Make sure you type the exact thing I wrote or the program
may not execute properly]

=end

# My solution
def greet(name)
  "Hello, #{name} how are you doing today?"
end

# Alternative solution
def greet(name)
  "Hello, %s how are you doing today?" % name
end
