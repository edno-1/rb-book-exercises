# # # twenty-one
# # =begin
# # - deck, player's cards, dealer's cards
# # =end

# # # entire deck - 52 cards - no specific suits
# # one_suit = %w(2, 3, 4, 5, 6, 7, 8, 9, 10, Jack, Queen, King, Ace)
# # p one_suit
# # deck = one_suit * 4
# # p deck
# # # simple array

# rubocop: disable Layout/LineLength

# # # deck - hash is the card plus value, array of hashes
# # one_suit = {"2"=>2, "3"=>3, "4"=>4, "5"=>5, "6"=>6, "7"=>7, "8"=>8, "9"=>9, "10"=>10, "Jack"=>10, "Queen"=>10, "King"=>10, "Ace"=>nil}
# # deck = [one_suit, one_suit, one_suit, one_suit]
# # p deck

# # # player's cards or dealer's cards - believe they will have similar data structures
# # player = [{"2"=>2}, {"Jack"=>10}]
# # # or
# # player = ["2", "Jack"]
# # # or

# # # given solution - a nested array which contains the two strings, suit and card name
# # [['H', '2'], ['S', 'J'], ['D', 'A']]

# # calculating aces - need to determine whether ace is 1 or 11 based on the cards in the player's hand
# # calculate hand's total value with ace as 11 and ace as 1
# # if hand total is greater than 21 with ace == 11, set ace == 1
# # if hand total is less than 21 with ace == 11, set ace == 11.
# # basically need to calculate the hand total based on different permutation of ace value combinations
# # if only one ace, either 1 or 11
# # if two aces, either 1, 1 or 1, 11, (or 11, 11 - impossible because greater than 21)
# # if three aces, either 1, 1, 11 (or 1, 11, 11 or 11, 11, 11 - impossible because greater than 21)
# # if three access, either 1, 1, 1, 11 (...)
# # can only be one ace == 11, no matter how many aces included
# # basically, the only potential is 11, 1, ... or 1, 1, ...

# # CARD_VALUE = {"2"=>2, "3"=>3, "4"=>4, "5"=>5, "6"=>6, "7"=>7, "8"=>8}
#                .merge({"9"=>9, "10"=>10, "Jack"=>10, "Queen"=>10, "King"=>10, "Ace"=>11})

# rubocop: enable Layout/LineLength

# # def evaluate_hand(hand)
# #   total = 0

# #   hand.each do |_, card|
# #     if card != 'Ace'
# #       total += CARD_VALUE[card]
# #     else
# #       total
# #     end
# #   end

# #   p total
# # end

# def total(cards)
#   # cards = [['H','3'], ['S','Q'], ... ]
#   values = cards.map { |card| card[1] }

#   sum = 0
#   values.each do |value|
#     if value == "A"
#       sum += 11
#     elsif value.to_i == 0 # J, Q, K
#       sum += 10
#     else
#       sum += value.to_i
#     end
#   end

#   # correct for aces
#   values.select { |value| value == "A"}.count.times do
#     sum -= 10 if sum > 21
#   end

#   sum
# end

# =begin
# 1. ask "hit" or "stay"
# 2. if "stay", stop asking => break condition
# 3. otherwise, go to #1 => loop
# =end

# answer = nil

# loop do
#   puts "hit or stay?"
#   answer = gets.chomp
#   break if answer == 'stay' || busted?
# end

# if busted?
#   # end game or play again
# else
#   puts "You chose to stay!"
# end

# =begin
# - dealer recieves two cards
# - if greater than or equal to 17, stay => break loop
# - if less than 17, hit
# - if total greater than 21, busted => break loop
# =end

# # hand1 = [['H', '2'], ['D', 'A']]                          # 13
# # hand2 = [['H', '2'], ['D', 'A'], ['S', 'A']]              # 14
# # hand3 = [['H', '2'], ['D', 'A'], ['S', 'A'], ['C', 'A']]  # 15
# # hand4 = [['H', '10'], ['D', 'A']]                         # 21
# # hand5 = [['H', '10'], ['D', 'K'], ['S', 'A']]             # 21
# # hand6 = [['H', '2'], ['D', 'J']]                          # 12
# # p total(hand1)
# # p total(hand2)
# # p total(hand3)
# # p total(hand4)
# # p total(hand5)
# # p total(hand6)

# initialize the deck
def initialize_deck
  deck = []
  cards = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  suits = ['H', 'D', 'S', 'C']
  suits.each do |suit|
    cards.each { |card| deck << [suit, card] }
  end
  deck
end

deck = initialize_deck

# Deal cards to player and dealer

def deal_card(person, deck)
  card = deck.sample
  deck.delete(card)
  person.unshift(card)
  card
end

def starting_hand(person, deck)
  2.times { deal_card(person, deck) }
end

def display_hands(player, dealer)
  dealer_cards = dealer.map { |_, card| card }
  dealer_cards.pop
  puts "Dealer has: #{dealer_cards.join(', ') + ' and unknown card'}"

  player_cards = player.map { |_, card| card }
  last_player_card = player_cards.pop
  puts "You have: #{player_cards.join(', ') + " and #{last_player_card}"}"
end

def total(cards)
  # cards = [['H','3'], ['S','Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    sum += if value == "A"
             11
           elsif value.to_i == 0 # J, Q, K
             10
           else
             value.to_i
           end
  end

  # correct for aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(person)
  total(person) > 21
end

def calculate_winner(player, dealer)
  if total(player) > total(dealer)
    'Player'
  elsif total(dealer) > total(player)
    'Dealer'
  end
end

def display_result(player, dealer)
  puts "Dealer total: #{total(dealer)}" + "\nPlayer total: #{total(player)}"
  if calculate_winner(player, dealer)
    prompt "The winner is #{calculate_winner(player, dealer)}"
  else
    prompt "It's a tie!"
  end
end

def prompt(msg)
  puts "==> #{msg}"
end

loop do
  player = []
  dealer = []

  starting_hand(player, deck)
  starting_hand(dealer, deck)
  display_hands(player, dealer)

  # p player
  # p dealer
  # p deck

  # Player turn: hit or stay - repeat until bust or "stay"

  loop do
    prompt "Player: hit or stay?"
    answer = gets.chomp

    deal_card(player, deck) if answer == 'hit'
    display_hands(player, dealer)

    break if answer == 'stay' || busted?(player)
  end

  # If player bust, dealer wins
  if busted?(player)
    puts "You busted - Dealer wins!"
    prompt "Would you like to play again? (y or n)"
    answer = gets.chomp
    answer == 'y' ? next : break
  else
    prompt "You chose to stay! Dealer's turn"
  end

  # Dealer turn: hit or stay - repeat until total >= 17
  loop do
    break if total(dealer) >= 17 || busted?(dealer)
    puts "Dealer hits"
    deal_card(dealer, deck)
    display_hands(player, dealer)
  end

  # If dealer bust, player wins
  if busted?(dealer)
    puts "Dealer busted - You win!"
    prompt "Would you like to play again? (y or n)"
    answer = gets.chomp
    answer == 'y' ? next : break
  else
    prompt "You and the Dealer have both stayed."
  end

  # If player and dealer stay, compare cards and declare winner!

  display_result(player, dealer)
  prompt "Would you like to play again? (y or n)"
  answer = gets.chomp
  answer == 'y' ? next : break
end

puts "Thank you for playing Twenty-One!"
