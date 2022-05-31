# # arr = [1, 2, 3, 4, 5]
# multiplier = 5

# arr.each do |num|
#   puts (num * multiplier)
# end


# def multiply(num1)
#   yield name # {num1 * multiplier}
#   p name
# end


# multiply(2) { |num| num * 5 }


# n = 10

# 1.times do |n|
#   n = 11
# end

# puts n



def merge(arr1, arr2)
  merged_arr = []
  loop do
    merged_arr << arr1.shift
    merged_arr << arr2.shift
    break if arr1.empty?
  end
  p merged_arr
end

def merge(arr1, arr2)
  merged_arr = []
  loop do
    counter +=1
    merged_arr << arr1[counter]
    merged_arr << arr2[counter]
    break if arr1.empty?
  end
  p merged_a


# assumptions: arr1 and arr2 same length, arr1 and arr2 can be mutated
merge([1, 2, 3], [4, 5, 6]) #=> [1, 4, 2, 5, 3, 6]

