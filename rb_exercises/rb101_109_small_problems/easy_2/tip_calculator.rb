# tip calculator
=begin
** problem
- create a simple tip calc
- prompt for a bill amount and
- tip rate
- compute tip and then
- display tip and
- total amount of the bill
input: integers, bill and tip %
output: floats, tip and bill amount
rules:
- take bill and tip %
- calculate tip and bill amount
-print
questions:
thoughts:

** examples / test cases
the output should be =>
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

** data structures
input: integers
intermed: floats
output: floats

** algorithm
- see rules

=end

#** code with intent
puts "What is the bill?"
bill = gets.chomp.to_i
puts "What is the tip percentage?"
tip_perc = gets.chomp.to_f

tip_amount = sprintf("%.2f", (bill * (tip_perc / 100)))

total = sprintf("%.2f", (bill + tip_amount.to_f))

puts "The tip is $#{tip_amount}"
puts "The total is $#{total}"
