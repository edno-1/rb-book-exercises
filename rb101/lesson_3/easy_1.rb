# question 3
# advice = "Few things in life are as important as house training your pet dinosaur."
# advice.sub!("important", "urgent") # replaces FIRST instance of the pattern within string w/ other string
# #or
# advice.gsub!() # replaces all instanaces of the pattern within string with the other string
# p advice

# question 5
# p (10..100).include?(42)
# p (10..100).cover?(42)

# question 6
# famous_words = "seven years ago..."
# # we need to add "Four score and " in front of the string above in two diff ways
# p famous_words = "Four score and " + famous_words
# #either or
# p famous_words.prepend("Four score and ")
# #or
# p "Four score and " << famous_words

# # question 7
# flintstones = ['Fred', 'Wilma']
# flintstones << ['Barney', 'Betty']
# flintstones << ['BamBam', 'Pebbles']
# p flintstones.flatten!

# # question 8
# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# # p (flintstones.to_a.select! {|k,v| k == "Barney"}).flatten!
# #use #assoc instead
# p flintstones.assoc("Barney")
