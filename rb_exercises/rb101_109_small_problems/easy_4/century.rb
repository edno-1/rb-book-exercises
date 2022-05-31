# what century is that?
=begin
** problem
- write a method that takes a year as input and
- returns the century.
- the return value should be a string...
input:
output:
rules:
questions:
thoughts:
1..100 = 1st century
101..200 = 2nd century
...
- if we divide the input.to_f by 100, then the return will be >= input
ex) 2000.to_f / 100 => 20.00 # which is the 20th century
2010.to_f / 100 => 20.10 # which is the 21st century
#or
- input % 100
- if 0, century is input / 100. if not zero, century is input / 100 + 1.

** examples / test cases:

** data structures

** algorithms
- determine century by dividing input by 100 => we now have the century integer value
1 => st
2 => nd
3 => rd
4..20 => th
21 => st
22 => nd
23 => rd
24..30 => th
31 => st
...
100 => th
101 => st
102 => nd
103 => rd
104..120 => th
121 => st
...
- the century integer value % 100 will return the last 2 digits of any value.
- if the remainder is between 0-20 we can handle it. if not, we can % again by 10 and the remainder should be between 1-10, which we can handle

=end


def century(year)
  if (year % 100) == 0      # determine the century
    cent = year/100
  else
    cent = year/100 + 1
  end
  
  remainder = cent % 100      # determine appropriate suffix
  if remainder > 20       # limits the range of remainder to 0..20
    remainder = remainder % 10
  end
  case remainder      # initializes `suffix` to the approriate string based on `remainder` value
    when 1
      suffix = 'st'
    when 2
      suffix = 'nd'
    when 3
      suffix = 'rd'
    else
      suffix = 'th'
  end
  
  cent.to_s + suffix      # return century + suffix
end



p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
