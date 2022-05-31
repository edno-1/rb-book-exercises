# # 1

# arr = ['10', '11', '9', '7', '8']
# # if we sort the number strings as they are,
# # they should sort in descending numeric value...

# # arr.sort_by { |string| string.to_i }.reverse

# sorted = arr.map { |string| string.to_i }
#             .sort { |a, b| b <=> a }
# p sorted

# arr.sort do |a, b|
#   b.to_i <=> a.to_i
# end


# # 2
# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]
# # order this array of hashes based on
# # the year of publication of each book,
# # from earliest to latest


# sorted = books.sort_by do |hash|
#   hash[:published].to_i # we do not actually need to convert to integers because all the strings are 4 characters
# end

# p sorted



# # 3
# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

# arr3 = [['abc'], ['def'], {third: ['ghi']}]

# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

# p arr1[2][1][3]
# p arr2[1][:third][0]
# p arr3[2][:third][0][0]
# p hsh1['b'][1]
# p hsh2[:third].key(0)



# # 4
# arr1 = [1, [2, 3], 4]

# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

# hsh1 = {first: [1, 2, [3]]}

# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

# arr1[1][1] = 4
# arr2[2] = 4
# hsh1[:first][2][0] = 4
# hsh2[['a']][:a][2] = 4

# p arr1
# p arr2
# p hsh1
# p hsh2



# # 5

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# # give the total age of just the male members of the family
# # if gender is male, access the age value and add it to a carrier sum...
# # or
# # select the k,v pairs for all males, then sum ages

# # males = munsters.select do |name, traits|
# #   traits["gender"] == "male"
# # end

# # total_age = 0

# # males.each do |name, traits|
# #   total_age += traits["age"]
# # end

# # p total_age

# # total_age = 0
# # munsters.each do |name, traits|   # we could do |_, traits| if we are not using the name key or we could use `Hash#each_value` 
# #   if traits["gender"] == "male"
# #     total_age += traits["age"]
# #   end
# # end

# # p total_age

# total_male_age = 0
# munsters.each_value do |details|
#   total_male_age += details["age"] if details["gender"] == "male"
# end
# p total_male_age


# # 6
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name, details|     # or we could use `Hash#each_pair` which is an alias for `Hash#each`
#   puts "#{name} is a #{details["age"]}-year-old #{details["gender"]}."
# end


# # 7
# a = 2
# b = [5, 8]
# arr = [a, b]

# arr[0] += 2
# arr[1][0] -= a

# # attempt
# # a => 2
# # b => [3, 8]

# p a
# p b
# p arr


# # 8
# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# # # output all the vowels from the strings
# # # print vowels from a passed string
# # characters = string.chars
# # characters.each do |char|
# #   puts char if 'aeiou'.include(char)
# # end
# # # pass all the strings
# # hsh.each_value do |arr|
# #   arr.each do |string|
# #   # print vowels from each passed string
# #   end
# # end

# hsh.each_value do |arr|
#   arr.each do |string|
#     characters = string.chars
#     characters.each do |char|
#       puts char if 'aeiou'.include?(char)
#       end
#     end
# end


# # 9
# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
# # return a new array of the same structure but
# # with the sub arrays being ordered (alphabetically or numerically as appropriate)
# # in descending order

# sorted = arr.map do |sub_array|
#   sub_array.sort do |a, b|
#     b <=> a
#   end
# end

# p sorted


# # 10
# original = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
# # use the `map` method to return a new array
# # identical in structure to the original but where
# # the value of each integer is incremented by 1
# # without modifying the original array

# # hash.each do |key, value|
# #   value += 1
# # end

# # altered = original.map do |hash|
# #   hash.each_with_object({}) do |(k, v), h|
# #     h[k] = v + 1
# #   end
# # end

# altered = original.map do |hash|
#   hash.each_with_object({}) do |element, h| k, v = *element;
#     h[k] = v + 1
#   end
# end

# # [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
# #   incremented_hash = {}
  
# #   hsh.each do |key, value|
# #     incremented_hash[key] = value + 1
# #   end
  
# #   incremented_hash
# # end
# # # => [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]

# p altered
# p original

# # abstract problem solving
# # coding language fluency
# # ideal to separate these two aspects of the problem, especially for beginners



# # 11
# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
# # use a combination of methods
# # including `select` or `reject`
# # to return a new array identical in structure to the original but
# # containing only the integers that are multiples of `3`
# # expected result => [[], [3], [9], [15]]

# p (
# arr.map do |sub_array|
#   sub_array.reject do |num|
#     num % 3 != 0
#   end
# end
# )



# # 12
# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# # expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
# # without using the `Array#to_h` method
# # write some code that will return a hahs where
# # the key is the first item in each sub-array and
# # the value is the second item

# # new_hash = {}
# # arr.each do |sub_arr|
# #   new_hash[sub_arr[0]] = sub_arr[1]
# # end

# new_hash = arr.each_with_object({}) do |sub_arr, hsh|
#   hsh[sub_arr[0]] = sub_arr[1]
# end

# p new_hash



# # 13
# arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]
# # expected result => [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]
# # return a new array containing the same sub-arrays as the original but
# # ordered logically by only taking into consideration
# # the odd numbers they contain...
# # - not sure exactly what this is asking me to do...

# sorted = arr.sort_by do |sub_arr|
#   sub_arr.select do |num|
#     num.odd?
#   end
# end

# p sorted



# # 14
# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }
# # return an array containing
# # the colors of the fruits and
# # the sizes of the veges
# # sizes uppercase and colors capitalized
# # expected return =>
# # [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# color_size = hsh.values.map do |value_hsh|
#   if value_hsh[:type] == 'fruit'
#     value_hsh[:colors].map { |color| color.capitalize }
#   else
#     value_hsh[:size].upcase
#   end
# end

# p color_size



# # 15
# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
# # return an array which
# # contains only the hashes where
# # all the integers are even

# selected = arr.select do |hsh|
#   hsh.values.all? do |num_arr|
#     num_arr.all? { |num| num.even? }
#   end
# end

# p selected


# 16
# write a method that returns one UUID when called with no parameters
def uuid
  uuid_arr = []
  [8, 4, 4, 4, 12].each do |size|
    uuid_arr << uuid_section(size)
  end
  uuid_arr.join('-') # "#{section_1}-#{section_2}-#{section_3}-#{section_4}-#{section_5}"
end

def uuid_section(size)
  hexa = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)
  section = ''
  size.times { section += hexa.sample }
  section
end

p one_uuid = uuid
