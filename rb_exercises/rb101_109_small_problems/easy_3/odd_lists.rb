# odd lists

# def oddities(arr)
#   selected = []
#   arr.each_with_index do |element, index|
#     selected << element if index.even?
#   end
#   selected
# end

def evenities(arr)
  selected = []
  arr.each_with_index do |element, index|
    selected << element if index.odd?
  end
  selected
end

# def oddities(arr)
#   selected = []
#   index = 0
  
#   until index >= arr.size
#     break if arr.size == 0
#     selected << arr[index]
#     index += 2
#   end
  
#   p selected
# end

def oddities(arr)
  if arr.size == 0
    []
  else
  index = (0..(arr.size-1)).select { |ind| ind.even? }
  index.map { |ind| arr[ind] }
  end
end


p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p evenities([2, 3, 4, 5, 6, 7]) == [3, 5, 7]
