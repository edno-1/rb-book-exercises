# leap years part 2
# update the method to determine leap years both before and after 1752
def leap_year?(year)
  if year < 1752
    year % 4 == 0
  else
    since_1752(year)
  end
end

def since_1752(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

puts [
leap_year?(2016) == true,
leap_year?(2015) == false,
leap_year?(2100) == false,
leap_year?(2400) == true,
leap_year?(240000) == true,
leap_year?(240001) == false,
leap_year?(2000) == true,
leap_year?(1900) == false,
leap_year?(1752) == true,
leap_year?(1700) == true,
leap_year?(1) == false,
leap_year?(100) == true,
leap_year?(400) == true
  ]