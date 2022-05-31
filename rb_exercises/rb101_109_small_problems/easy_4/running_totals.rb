# running totals
=begin
- write a method that takes an Array of number, and
- returns an Array with the same number of elements, and
- each element has the running total from the original Array
=end

require 'pry'
# def running_total(arr)
#   sum = 0
#   arr.map do |num|
#     sum += num
#   end
# end

# def running_total(arr)
#   sum = 0
#   arr.each_with_object([]) do |num, array|
#     sum += num
#     array << sum
#   end
# end


def running_total(arr)
  transformed = []
  arr.reduce(0) do |sum, num|
    # binding.pry
    sum += num
    transformed << sum
    sum
  end
  p transformed
end

p [
running_total([2, 5, 13]) == [2, 7, 20],
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67],
running_total([3]) == [3],
running_total([]) == []
  ]
