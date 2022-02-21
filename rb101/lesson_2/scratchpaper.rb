# def keeping_score(value, score)
#   if value == 'p'
#     score << 'p'
#   elsif value == 'c'
#     score << 'c'
#   else
#     score << 'd'
#   end
#   score  # this method returns an array score that has been updated
# end

# def who_won?(player, computer, score)
#   if win?(player, computer)
#     score << 'p'
#   elsif win?(computer, player)
#     score << 'c'
#   else
#     score << 'd'
#   end
# end

# def champion_is?(score, champion)
#   puts "And with a final score of...
#       Player: #{score.count('p')}, Computer: #{score.count('c')}, Draw: #{score.count('d')}"
#   puts "The grand champion is... #{champion}!"
# end 

# score = []
# champion = ''

# loop do
#   puts "Enter a value: p, c, or d"
#   value = gets.chomp
  
#   keeping_score(value, score)
#   # takes the winner value and adds it to the current score array
#   # outputs the updated score array
  
#   # p score
#   puts "Current score:
#         Player: #{score.count('p')}, Computer: #{score.count('c')}, Draw: #{score.count('d')}"
  
#   if score.count('p') == 3
#     champion = 'Player'
#     champion_is?(score, champion)
#     break
#   elsif score.count('c') == 3
#     champion = 'Computer'
#     champion_is?(score, champion)
#     break
#   end
  
# end
# p score



# def win?(first, second)
#   which_beats_which = {
#   "rock" => ["scissors", "lizard"],
#   "paper" => ["rock", "Spock"],
#   "scissors" => ["paper", "lizard"],
#   "lizard" => ["Spock", "paper"],
#   "Spock" => ["scissors", "rock"]
#   }
#   which_beats_which[first].include?(second)
# end

# puts win?("rock", "rock")
# puts win?("rock", "scissors")
# puts win?("rock", "Spock")



# abbreviator_prompt = <<-MSG
#   r) rock
#   p) paper
#   s) scissors
#   l) lizard
#   S) Spock
# MSG
# prompt(abbreviator_prompt)

# def convert_abbrv(choice)
#   abbreviations = {
#     'r' => 'rock',
#     'p' => 'paper',
#     's' => 'scissors',
#     'l' => 'lizard',
#     'S' => 'Spock'
#   }
#   abbreviations[choice]
# end


if !!(a = 2)
  puts a
end