=begin

Introduction

In the United Kingdom, the driving licence is the official document which
authorises its holder to operate various types of motor vehicle on highways
and some other roads to which the public have access. In England, Scotland
and Wales they are administered by the Driver and Vehicle Licensing Agency
(DVLA) and in Northern Ireland by the Driver & Vehicle Agency (DVA). A
driving licence is required in the UK by any person driving a vehicle on any
highway or other road defined in s.192 Road Traffic Act 1988[1] irrespective
of ownership of the land over which the road passes, thus including many which
allow the public to pass over private land; similar requirements apply in
Northern Ireland under the Road Traffic (Northern Ireland) Order 1981.
(Source Wikipedia)

Task

The UK driving number is made up from the personal details of the driver.
The individual letters and digits can be code using the below information

Rules

1–5: The first five characters of the surname (padded with 9s if less than 5
characters)

6: The decade digit from the year of birth (e.g. for 1987 it would be 8)

7–8: The month of birth (7th character incremented by 5 if driver is female
i.e. 51–62 instead of 01–12)

9–10: The date within the month of birth

11: The year digit from the year of birth (e.g. for 1987 it would be 7)

12–13: The first two initials of the first name and middle name, padded with
a 9 if no middle name

14: Arbitrary digit – usually 9, but decremented to differentiate drivers with
the first 13 characters in common. We will always use 9

15–16: Two computer check digits. We will always use "AA"

Your task is to code a UK driving license number using an Array of data. The
Array will look like

data = ["John","James","Smith","01-Jan-2000","M"]

Where the elements are as follows

0 = Forename
1 = Middle Name (if any)
2 = Surname
3 = Date of Birth (In the format Day Month Year, this could include the full
Month name or just shorthand ie September or Sep)
4 = M-Male or F-Female

You will need to output the full 16 digit driving license number.

Good luck and enjoy!

=end

# My solution
def driver(data)
    surname = data[2]
      if surname.length < 5
        surname.concat("9") until surname.length == 5
      end
    surname = surname[0..4].upcase
    date = data[3]
    date.gsub!(/-/, "").split.join
    day = date[0..1]
    year = date[date.length-2..date.length]
    year1 = year[0]
    year2 = year[1]
    month = date.gsub!(/\d+/, "").split.join
      case month
        when "Jan", "January"
          month = "01"
        when "Feb", "February"
          month = "02"
        when "Mar", "March"
          month = "03"
        when "Apr", "April"
          month = "04"
        when "May"
          month = "05"
        when "Jun", "June"
          month = "06"
        when "Jul", "July"
          month = "07"
        when "Aug", "August"
          month = "08"
        when "Sep", "September"
          month = "09"
        when "Oct", "October"
          month = "10"
        when "Nov", "November"
          month = "11"
        when "Dec", "December"
          month = "12"
      end
      if data[4] == "F"
         month = month.to_i + 50
      else
        month
      end
    name = data[0]
    midname = data[1]
      if midname == ""
        midname = "9"
      else
        midname
      end
    initials = name[0] + midname[0]
    print  "#{surname}#{year1}#{month}#{day}#{year2}#{initials}9AA"
end

# Better solution
require 'date'

def driver(data)
  surname(data[2]) +
    birth_decade(data[3]) +
    birth_month(data[3], data[4]) +
    birth_day_in_month(data[3]) +
    birth_year_digit(data[3]) +
    initials(data[0], data[1]) +
    arbitrary() +
    checkdigits()
end

def surname(name)
  name[0..4].upcase.ljust(5, '9')
end

def birth_decade(birthday)
  birthday[-2]
end

def birth_month(birthday, gender)
  month = Date::ABBR_MONTHNAMES
    .index(birthday[3..5])
    .to_s
    .rjust(2, '0')
  if gender == 'F'
    return (month[0].to_i + 5).to_s + month[1]
  end
  return month
end

def birth_day_in_month(birthday)
  birthday[0..1]
end

def birth_year_digit(birthday)
  birthday[-1]
end

def initials(forename, middlename)
  forename[0] + middlename[0..0].rjust(1, '9')
end

def arbitrary()
  '9'
end

def checkdigits()
  'AA'
end
