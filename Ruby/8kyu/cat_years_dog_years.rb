=begin

Kata Task

I have a cat and a dog.

I got them at the same time as kitten/puppy. That was humanYears years ago.

Return their respective ages now as [humanYears,catYears,dogYears]

NOTES:

* humanYears >= 1
* humanYears are whole numbers only

Cat Years

* 15 cat years for first year
* +9 cat years for second year
* +4 cat years for each year after that

Dog Years

* 15 dog years for first year
* +9 dog years for second year
* +5 dog years for each year after that

References

http://www.catster.com/cats-101/calculate-cat-age-in-cat-years
http://www.slate.com/articles/news_and_politics/explainer/2009/05/a_dogs_life.html

=end

# My solution
def human_years_cat_years_dog_years(human_years)
  years = [human_years, 15, 15]
    if human_years == 1
      years
    elsif human_years == 2
      years[1] = years[1] + 9 & years[2] = years[2] + 9
    else
      years[1] = years[1] + 9 + 4 * (human_years - 2)
      years[2] = years[2] + 9 + 5 * (human_years - 2)
    end
  return years
end

# Better solution
def human_years_cat_years_dog_years n
  [n, n == 1 ? 15 : 4 * (n + 4), n == 1 ? 15 : 5 * n + 14]
end
