# # question 1
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# p ages.keys.include?("Spot")
# p ages.key?("Spot")
# p ages.has_key?("Spot")
# p ages.include?("Spot")
# p ages.member?("Spot")


# # question 2
# munsters_description = "The Munsters are creepy in a good way."
# p munsters_description.swapcase!
# p munsters_description.capitalize!
# p munsters_description.downcase!
# p munsters_description.upcase!

# # question 3
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# additional_ages = {"Marilyn" => 22, "Spot" => 237 }
# ages.merge!(additional_ages)
# p ages
# # ages << additional_ages => this actually doesn't work because << is not a method for hashes

# # question 4
# advice = "Few things in life are as important as house training your pet dinosaur."
# p advice.include?("Dino")
# p advice.match?("Dino")

# # question 5
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
# #or
# p flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# # q6 - adding new elements to arrays
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# p flintstones << "Dino"

# # q7 - adding multiple elements to an array at once
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# p flintstones << "Dino" << "Hoppy"
# flintstones.push("Dino").push("Hoppy") # we can chain push because push returns an array
# flinstones.concat(%w(Dino Hoppy)) # concat adds an array rather than one item...

# # q8
# advice = "Few things in life are as important as house training your pet dinosaur."
# #p advice.slice!("Few things in life are as important as ")
# #or
# advice.slice!(0, advice.index('house'))
# p advice

# # q9
# statement = "The Flintstones Rock!"
# p statement.count "t"

# q10
title = "Flintstones Family Members"
p title.center(40)