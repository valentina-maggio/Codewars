=begin

The function is not returning the correct values. Can you figure out why?

Example (Input --> Output ):

3 --> "Earth"

=end

# My solution
def get_planet_name(id)
  case id
    when 1 then name = "Mercury"
    when 2 then name = "Venus"
    when 3 then name = "Earth"
    when 4 then name = "Mars"
    when 5 then name = "Jupiter"
    when 6 then name = "Saturn"
    when 7 then name = "Uranus"
    when 8 then name = "Neptune"
  end
  return name
end

# Alternative solution
def get_planet_name(id)
  %w[0 Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune][id]
end
