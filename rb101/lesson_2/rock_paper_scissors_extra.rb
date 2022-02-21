VALID_CHOICES = %w(rock paper scissors lizard Spock)

def test_method
  prompt('test message')
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second) # evaluates inputs according to win condition hash
  which_beats_which = {
    "rock" => ["scissors", "lizard"],
    "paper" => ["rock", "Spock"],
    "scissors" => ["paper", "lizard"],
    "lizard" => ["Spock", "paper"],
    "Spock" => ["scissors", "rock"]
  }
  which_beats_which[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You win!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def track_score(player, computer, score) #tracks the player, computer wins, and draws in an array
  if win?(player, computer)
    score << 'p'
  elsif win?(computer, player)
    score << 'c'
  else
    score << 'd'
  end
end

def display_champion(score, champion)
  prompt("And with a final score of...
    Player: #{score.count('p')}, Computer: #{score.count('c')},
    Draw: #{score.count('d')}")
  prompt("The grand champion is... #{champion}!")
end

def display_current_score(score)
  prompt("Current score:
    Player: #{score.count('p')}, Computer: #{score.count('c')},
    Draw: #{score.count('d')}")
end

def convert_abbrv(choice) # converts abbrev to full string
  abbreviations = {
    'r' => 'rock',
    'p' => 'paper',
    's' => 'scissors',
    'l' => 'lizard',
    'S' => 'Spock'
  }
  abbreviations[choice]
end

abbreviator_prompt = <<-MSG
  r) rock
    p) paper
    s) scissors
    l) lizard
    S) Spock
MSG

score = []
champion = ''

loop do # overall loop for entire probram
  choice = ''

  loop do # loop for recieving and validating user input
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt(abbreviator_prompt)
    choice = Kernel.gets().chomp()

    choice = convert_abbrv(choice)

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end # end of user input/validation loop

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  track_score(choice, computer_choice, score)

  display_current_score(score)

  if score.count('p') == 3 # evaluates if player or computer has reached grand champion win condition
    champion = 'Player'
    display_champion(score, champion)
    break
  elsif score.count('c') == 3
    champion = 'Computer'
    display_champion(score, champion)
    break
  end

  prompt("Do you want to play again?") # reloop if player wishes to continue playing. Otherwise exit.
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
