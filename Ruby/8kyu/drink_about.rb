=begin

Kids drink toddy.
Teens drink coke.
Young adults drink beer.
Adults drink whisky.
Make a function that receive age, and return what they drink.

Rules:

Children under 14 old.
Teens under 18 old.
Young under 21 old.
Adults have 21 or more.
Examples: (Input --> Output)

13 --> "drink toddy"
17 --> "drink coke"
18 --> "drink beer"
20 --> "drink beer"
30 --> "drink whisky"

=end

# My solution
def people_with_age_drink(old)
  if old < 14
     "drink toddy"
  elsif old >= 14 && old < 18
     "drink coke"
  elsif old >= 18 && old < 21
     "drink beer"
  else
     "drink whisky"
  end
end

# Better solution
def people_with_age_drink(age)
  'drink ' + case age
    when 0..13 then 'toddy'
    when 14..17 then 'coke'
    when 18..20 then 'beer'
    else 'whisky'
  end
end
