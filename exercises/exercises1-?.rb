# exercise_1

arr = *(1..10)
arr.each { |v| puts v }

# exercise_2

arr.each { |v| puts v if v > 5 }

# exercise_3

odds = arr.select { |v| v % 2 == 1 }
p odds


# exercise_4

arr << 11
p arr.unshift(0)

# exercise_5

arr.pop
p arr << 3

# exercise_6

p arr.uniq

# exercise_7
# Arrays are comprised of ordered data elements with a numerical index while hashes are "unordered"
# stores of value elements with that us a "key" index.

# exercise_8

p cat = { name: "Jimmy" }
p cat_2 = { :name => "James" } 

# exercise_9

h = {a:1, b:2, c:3, d:4 }
p h[:b]
h[:e] = 5
p h
p h.delete_if { |k,v| v < 3.5 }

# exercise_10

p dog = { siblings: ["jim","jon","jack"] }
p dog_2 = [ dog, cat]

# exercise_11
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

  #attempt 1
#contacts["Joe Smith"] = contact_data[0].each { |e, a, ph| { email: e, address: a, phone: ph } }
#contacts["Sally Johnson"] = contact_data[1].each { |e, a, ph| { email: e, address: a, phone: ph } }

  #solution
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][2]
contacts["Sally Johnson"][:phone] = contact_data[0][2]
p contacts

# exercise_12

p contacts["Joe Smith"][:email]
p contacts["Sally Johnson"][:phone]
 
 # attempt 1
=begin 
def retrieve(name, symbol)
  puts "The #{symbol} of #{name} is" + contacts[name][symbol] + "!"
end 

retrieve("Joe Smith", :email)
retrieve("Sally Johnson", :phone)
=end 

  #solution
puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"


# exercise_13

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
p arr.delete_if { |s| s.start_with?("s") }
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
p arr.delete_if { |s| s.start_with?("s") || s.start_with?("w")}
#better method: p arr.delete_if { |s| s.start_with?("s", "w")}

# exercise_14

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

new_a = a.map { |string| string.split(' ') }
p new_a.flatten

# exercise_15

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# output will be "These hashes are the same!"

# exercise_16

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

template = [:email,:address,:phone]
template.map { |s| contacts["Joe Smith"][s] = contact_data.shift }
p contacts

contact_data_1 = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contact_data = contact_data_1.flatten

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts.keys.each do |person|
  template.map { |s| contacts[person][s] = contact_data.shift }
end
p contacts
