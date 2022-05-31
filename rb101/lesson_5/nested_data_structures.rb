arr = [[1, 3], [2]]
arr[0]
arr[0][1] # chained reference
arr[1] = "hi there"
arr

arr = [[1, 3], [2]]
arr[0][1] = 5 # looks like a chained reference but actually
# is an array element update
arr

arr = [[1], [2]]
arr[0] << 3
arr

#or

arr = [[1], [2]]
arr[0] << [3]
arr

arr = [{ a: 'ant'}, { b: 'bear'}]

arr[0][:c] = 'cat'
arr


arr = [['a',['b']], { b: 'bear', c: 'cat' }, 'cab']

arr[0]
arr[0][1][0]
arr[1]
arr[1][:b]
arr[1][:b][0]
arr[2][2]


a = [1, 3]
b = [2]
arr = [a, b]
arr

a[1] = 5
arr

arr[0][1] = 8
arr
a

arr1 = ['a', 'b', 'c']
arr2 = arr1.dup
arr2[1].upcase!

arr2
arr1

arr1 = ['abc', 'def']
arr2 = arr1.clone
arr2[0].reverse!

arr2
arr1


arr1 = ['a', 'b', 'c']
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

arr1
arr2


arr1 = ['a', 'b', 'c']
arr2 = arr1.dup
arr2.each do |char|
  char.upcase!
end

arr1
arr2



arr1 = ['a', 'b', 'c'].freeze
arr2 = arr1.clone
arr2 << 'd'

arr1 = ['a', 'b', 'c'].freeze
arr2 = arr1.dup
arr2 << 'd'

str = 'abc'.freeze
str << 'd'

arr = [[1], [2], [3]].freeze
arr[2] << 4
arr