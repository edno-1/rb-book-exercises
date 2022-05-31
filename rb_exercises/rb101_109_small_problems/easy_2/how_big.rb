# how big is the room?
=begin
** problem
- build a program that
- asks a user for
- the length
- and width
- of a room, in meters, then
- displays the area of the room in both
- square meters and
- square feet
input:
output:
rules:
questions:
thoughts:

** examples / test cases
Output should be =>
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

** data structures
input: integers, length and width
output: float, area in meters and feet

** scratchpad
** algorithm
request length
request width
calc area in meters
calc area in sq ft
print both

=end

# puts "Enter the length of the room in meters:"
# length = gets.chomp.to_i
# puts "Enter the width of the room in meters:"
# width = gets.chomp.to_i
# area_m = length * width
# area_sqft = area_m * 10.7639
# puts "The area of the room is #{area_m.to_f} square meters (#{area_sqft.round(2)} square feet)."


# SQMETERS_TO_SQFEET = 10.7639

# puts '==> Enter the length of the room in meters: '
# length = gets.to_f

# puts '==> Enter the width of the room in meters: '
# width = gets.to_f

# square_meters = (length * width).round(2)
# square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

# puts "The area of the room is #{square_meters} " + \
#     "square meters (#{square_feet} square feet)."

SQFEET_TO_SQINCHES = 144
SQINCHES_TO_SQCENTIM = 6.4516

puts '==> Enter the length of the room in feet: '
length = gets.to_f

puts '==> Enter the width of the room in feet: '
width = gets.to_f

square_feet = (length * width)
square_inches = (square_feet * SQFEET_TO_SQINCHES).round(2)
square_centim = (square_inches * SQINCHES_TO_SQCENTIM).round(2)

puts "The are of the room is #{square_feet} square feet (#{square_inches} square inches) (#{square_centim} square centimeters)."
