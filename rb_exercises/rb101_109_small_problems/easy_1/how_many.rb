# how many?
=begin

** problem **
- write a method
- that counts the number of occurences
- of each element
- in a given array
input: array (list of strings)
output: print each element along side the number of occurences
questions:
thoughts:
- it would be nice to know what are the possible strings within the array
- once we know the possible strings, we can go through and count the instances of each
  - `Array#uniq` returns a new array by removing duplicate values in `self` effectively giving us an array of all possible string within the array

** examples / test cases **
see the code below

** data structures **


** scratchpad **

** algorithm **

=end

#code with intent

def count_occurrences(list_of_vehicles)
  list_of_vehicles.map! { |type| type.downcase }
  condensed_list = list_of_vehicles.uniq
    
  
  vehicle_count = Hash.new
  
  condensed_list.each do |vehicle_type|
    vehicle_count[vehicle_type] = list_of_vehicles.count(vehicle_type)
  end
  
  vehicle_count.each do |vehicle_type, count|
    puts "#{vehicle_type} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2