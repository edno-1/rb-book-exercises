require 'pry'
# write a method called `joinor` which will produce the following:
# joinor([1, 2])                   # => "1 or 2"
# joinor([1, 2, 3])                # => "1, 2, or 3"
# joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
# joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

# def joinor(arr, delim = ', ', joining_word = 'or')
#   last_value = arr.pop.to_s
#   return last_value if arr.empty?
#   if arr.size == 1
#     [arr, " #{joining_word} #{last_value}"].join('')
#   else
#     [arr.join(delim), "#{joining_word} #{last_value}"].join(delim)
#   end
# end

# joinor([1])                      # => "1"
# joinor([1, 2])                   # => "1 or 2"
# joinor([1, 2, 3])                # => "1, 2, or 3"
# joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
# joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

# # given solution
# def joinor(arr, delimiter=', ', word='or')
#   case arr.size
#   when 0 then ''
#   when 1 then arr.first
#   when 2 then arr.join(" #{word} ")
#   else
#     arr[-1] = "#{word} #{arr.last}"
#     arr.join(delimiter)
#   end
# end


# keep score

# def keeping_score(winner, score)
#   winner ? score[winner] += 1 : score['Tie'] += 1
#   prompt "Current score
#           Player: #{score['Player']}
#           Computer: #{score['Computer']}
#           Tie: #{score['Tie']}"
# end

# score = { 'Player' => 0, 'Computer' => 0, 'Tie' => 0 }

# keeping_score(detect_winner(board), score)
# break if score['Player'] == 5 || score['Computer'] == 5


# computer ai: defense

=begin
- let's make the computer defense minded, so that if there's an immediate threat, then it will defend the 3rd square.
- consider an "immediate threat" to be 2 squares marked by the opponent in a row

- the program "reads" the board
- if the board fulfills a certain criteria
- respond accordingly...

- check if there is an immediate threat
  - this means there are two player markers in any of the WINNING_LINES sub-arrays
- if there are two player markers in any of the WINNING_LINES sub-arrays,
  - the computer will place their piece on the one empty location
  
write a method to detect any immediate threat - return the immediate threat sub-array
write a method that defends - filling in the empty spot in the immediate threat sub-array
- we need to identify which key has an empty value spot
- then during the computers turn, the computer must fill that spot opposed to another.
=end
# INITIAL_MARKER = ' '
# COMPUTER_MARKER = 'O'
# WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
#                 [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
#                 [[1, 5, 9], [3, 5, 7]] # diagonals
# board = {1=>'X',2=>' ',3=>' ',4=>'X',5=>' ',6=>' ',7=>' ',8=>' ',9=>' '}

# def immediate_threat(brd)
#   WINNING_LINES.each do |line|
#     if brd.values_at(*line).count('X') == 2 &&
#       brd.values_at(*line).include?(' ')
#       return line
#     end
#   end
#   return false
# end

# def defend(brd)
#   immediate_threat(brd).each do |position|
#     brd[position] = COMPUTER_MARKER if brd[position] == INITIAL_MARKER
#   end
# end


# defend(board)


# given solution
# board = {1=>'X',2=>' ',3=>' ',4=>'X',5=>' ',6=>' ',7=>' ',8=>' ',9=>' '}
# line = [1,4,7]

# def find_at_risk_square(line, board)
#   if board.values_at(*line).count(PLAYER_MARKER) == 2
#     board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
#   else
#     nil
#   end
# end

# def computer_places_piece!(brd)
#   square = nil
#   WINNING_LINES.each do |line|
#     square = find_at_risk_square(line, brd)
#     break if square
#   end

#   if !square
#     square = empty_squares(brd).sample
#   end

#   brd[square] = COMPUTER_MARKER
# end


# # computer ai: offense

# def find_opportunity(line, board)
#   if board.values_at(*line).count(COMPUTER_MARKER) == 2
#     board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
#   else
#     nil
#   end
# end

# # given solution

# def find_at_risk_square(line, board, marker)
#   if board.values_at(*line).count(marker) == 2
#     board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
#   else
#     nil
#   end
# end

# def computer_places_piece!(brd)
#   square = nil

#   # defense first
#   WINNING_LINES.each do |line|
#     square = find_at_risk_square(line, brd, PLAYER_MARKER)
#     break if square
#   end

#   # offense
#   if !square
#     WINNING_LINES.each do |line|
#       square = find_at_risk_square(line, brd, COMPUTER_MARKER)
#       break if square
#     end
#   end

#   # just pick a square
#   if !square
#     square = empty_squares(brd).sample
#   end

#   brd[square] = COMPUTER_MARKER
# end


# # improve the game loop
# # write two new methods `place_piece!` and `alternate_player`

# def place_piece!(board, current_player)
#   case current_player
#     when 'player'
#       player_places_piece!(board)
#     when 'computer'
#       computer_places_piece!(board)
#   end
# end

# def alternate_player(current_player)
#   case current_player
#     when 'player'
#       'computer'
#     when 'computer'
#       'player'
#   end
# end