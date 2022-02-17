=begin

Task

You will be given a string of English digits "stuck" together,
like this:

"zeronineoneoneeighttwoseventhreesixfourtwofive"

Your task is to split the string into separate digits:

"zero nine one one eight two seven three six four two five"

Examples

"three"              -->  "three"
"eightsix"           -->  "eight six"
"fivefourseven"      -->  "five four seven"
"ninethreesixthree"  -->  "nine three six three"
"fivethreefivesixthreenineonesevenoneeight"  -->  "five three five
six three nine one seven one eight"

=end

# My solution
def uncollapse(s)
  s.scan(/zero|one|two|three|four|five|six|seven|eight|nine/).join(' ')
end

# Alternative solution
def uncollapse(s)
  arr = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'zero']
  arr.each {|v| s.gsub!(v, "#{v} ")}
  s.strip
end
