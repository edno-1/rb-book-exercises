# def snake(str)
#   words = str.split
#   current_word = 0

#   loop do
#     words[current_word].downcase!

#     current_word += 1
#     break if current_word >= words.size
#   end

#   words.join('_')
# end

# sentence = 'The sky was blue'
# p snake(sentence) # => 'the_sky_was_blue'

# def camel(str)
#   words = str.split(' ')
#   counter = 0

#   while counter < words.size
#     words[counter] = words[counter].capitalize

#     counter = counter + 1
#   end

#   words.join
# end

# sentence = 'The sky was blue'
# p camel(sentence) # => 'TheSkyWasBlue'


# def upper_snake(str)
#   words = str.split
#   current_word = 0

#   loop do
#     break if current_word == words.size

#     words[current_word].upcase!
#     current_word += 1
#   end

#   words.join('_')
# end

# sentence = 'The sky was blue'
# p upper_snake(sentence) # => 'THE_SKY_WAS_BLUE'

# b = [1, 2, 3]
# a = b.select { 1 }
# p b.object_id
# p a.object_id

# b = [1, 2, 3, 4]
# odd, even = b.partition { |num| num.odd? }
# p odd
# p even

# b = %w(a b c)
# c = b.map { |letter| letter.capitalize }.join(' ')
# p b
# p c

countries_and_capitals = {
  'France' => 'Paris',
  'Belgium' => 'Brussels',
  'Morocco' => 'Rabat',
  'Barbados' => 'Bridgetown',
  'Peru' => 'Lima',
  'Bolivia' => 'La Paz',
  'Brazil' => 'Brasilia'
}

def begins_with_b(string)
  string[0] == 'B'
end

a = countries_and_capitals.find_all do |country, capital|
  begins_with_b(country)
end

p a
