
def sum_even_number_row(row_number)
  rows = []
  start_integer = 2
  (1..row_number).each do |current_row_number|
    rows << create_row(start_integer, current_row_number)
    start_integer = rows.last.last + 2
  end
  rows.last.sum
end

def create_row(start_integer, row_length)
  row = []
  current_integer = start_integer
  loop do
    row << current_integer
    current_integer += 2
    break if row.length == row_length
  end
  row
end

# examples for the main method and helper method

p sum_even_number_row(1) == 2 # true
p sum_even_number_row(2) == 10
p sum_even_number_row(4) == 68

# Calculating the start integer:
# Rule: First integer of row is == Last integer of the preceding row + 2
# Algorithm:
#  - Get the last row of the rows array
#  - get the last integer of that row
#  - add 2 to the integer


# p create_row(2, 1) == [2]
# p create_row(4, 2) == [4, 6]
# p create_row(8, 3) == [8, 10, 12]

# Start the loop
#  - Add the start integer to the row
#  - Increment the start integer by 2
#  - Break out of the loop if length of row equals row_length

