# multiples of 3 and 5
=begin
- write a method that searches for all multiples of 3 or 5 that
- lie between 1 and some other number, and then
- computes the sum of those multiples
=end

def multisum(num)
  selected = (1..num).select do |int|
    int % 3 == 0 || int % 5 == 0
  end
  # selected.sum
  selected.inject(:+)

end

p [
multisum(3) == 3,
multisum(5) == 8,
multisum(10) == 33,
multisum(1000) == 234168
]