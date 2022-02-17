=begin

You can print your name on a billboard ad. Find out how much it will cost you.
Each letter has a default price of £30, but that can be different if you are
given 2 parameters instead of 1.

You can not use multiplier "*" operator.

If your name was Jeong-Ho Aristotelis, ad would cost £600.
20 letters * 30 = 600 (Space counts as a letter).

=end

# My solution
def billboard(name, price = 30)
  array = []
  price != 30 ? price.times { array << name.scan(/\D/).length } : 30.times { array << name.scan(/\D/).length }
  array.inject(0, :+)
end

# Better solution
def billboard(name, price = 30)
  sum = 0
  name.length.times{sum+=price}
  sum
end
