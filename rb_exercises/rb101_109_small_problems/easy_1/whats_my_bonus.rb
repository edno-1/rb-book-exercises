# what's my bonus?
=begin
** problem
- write a method that
- takes two arguments,
- a positive integer and
- a boolean, and
- calculates the bonus for
- a given salary
- If the boolean is true,
- the bonus should be half of the salary
- If false,
- the bonus should be 0.
inputs: two arguments, integer and boolean
output: integer, bonus value
rules:
- if boolean `true`, bonus is half of salary
- if boolean `false`, bonus is `0`

** examples / test cases
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

** data structures
input: integer, boolean
intermed:...
output: integer

** scratchpad
** algorithm
if true, salary /2
if false, 0

=end

#** code with intent

def calculate_bonus(salary, bonus_or_nah)
  bonus_or_nah ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
