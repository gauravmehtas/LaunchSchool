INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  puts <<-MSG
                TIC TAC TOE => 3X3

                  1    |2    |3
                    #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}
                       |     |
                  -----------------
                  4    |5    |6
                    #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}
                       |     |
                  -----------------
                  7    |8    |9
                    #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}
                       |     |
  MSG
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def junior(arr, delemeter = ',', seperation = 'or')
  if arr.size == 1
    arr.join.to_s
  else
    last = arr.pop
    "#{arr.join(delemeter)} #{seperation} #{last}"
  end
end

def player_places_piece!(brd)
  square = ' '
  loop do
    prompt "Player choose a box: #{junior(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_defence_move(brd)
  defence = []
  WINNING_LINES.each do |arr|
    if brd.values_at(arr[0], arr[1], arr[2]).count(PLAYER_MARKER) == 2 &&
       brd.values_at(arr[0], arr[1], arr[2]).count(INITIAL_MARKER) == 1
      sub_hsh = {
        arr[0] => brd.values_at(arr[0]),
        arr[1] => brd.values_at(arr[1]),
        arr[2] => brd.values_at(arr[2])
      }
      sub_hsh.each { |k, v| defence.push(k) if v == [" "] }
    end
  end
  defence
end

def computer_offence_move(brd)
  offence = []
  WINNING_LINES.each do |arr|
    if brd.values_at(arr[0], arr[1], arr[2]).count(COMPUTER_MARKER) == 2 &&
       brd.values_at(arr[0], arr[1], arr[2]).count(INITIAL_MARKER) == 1
      sub_hsh = {
        arr[0] => brd.values_at(arr[0]),
        arr[1] => brd.values_at(arr[1]),
        arr[2] => brd.values_at(arr[2])
      }
      sub_hsh.each { |k, v| offence.push(k) if v == [" "] }
    end
  end
  offence
end

def computer_places_piece!(brd)
  defensive = computer_defence_move(brd)
  offensive = computer_offence_move(brd)
  if !offensive.empty?
    brd[offensive[0]] = COMPUTER_MARKER
  elsif !defensive.empty?
    brd[defensive[0]] = COMPUTER_MARKER
  elsif brd[5] == INITIAL_MARKER
    brd[5] = COMPUTER_MARKER
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end

def who_play_first
  first_player_arr = []
  prompt "Do you wish to go first? (Type 'y' for Yes)"
  first_player = gets.chomp

  if first_player.downcase == 'y'
    first_player_arr = [PLAYER_MARKER, COMPUTER_MARKER]
  else
    first_player_arr = [COMPUTER_MARKER, PLAYER_MARKER]
  end
  first_player_arr
end

def current_player(brd, play_first, counter)
  if counter.even? && play_first[0] == 'O'
    computer_places_piece!(brd)
  elsif counter.odd? && play_first[1] == 'X'
    player_places_piece!(brd)
  end

  if counter.even? && play_first[0] == 'X'
    player_places_piece!(brd)
  elsif counter.odd? && play_first[1] == 'O'
    computer_places_piece!(brd)
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |arr|
    if brd.values_at(arr[0], arr[1], arr[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(arr[0], arr[1], arr[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

loop do
  prompt "Welcome to Tic Tac Toe"
  player_score = 0
  computer_score = 0
  draw = 0
  round = 1
  board = initialize_board
  winner = ''
  play_first = who_play_first

  until player_score == 5 || computer_score == 5
    counter = 0
    loop do
      display_board(board)

      prompt "Round: #{round} | Player Score: #{player_score} |" \
      " Computer Score: #{computer_score} | Draw: #{draw}"

      current_player(board, play_first, counter)
      sleep(1)
      break if someone_won?(board) || board_full?(board)
      counter += 1
    end

    display_board(board)
    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      winner = detect_winner(board)
      if detect_winner(board) == 'Player'
        player_score += 1
      elsif detect_winner(board) == 'Computer'
        computer_score += 1
      end
    else
      prompt "It's a tie!"
      draw += 1
    end
    sleep(2)
    board = initialize_board
    round += 1
  end
  puts <<-MSG
  -----------------------------------------
  | Player Score: #{player_score} | Computer Score: #{computer_score} |
  -----------------------------------------
  |Grand Winner: #{winner.upcase}!!               |
  -----------------------------------------
  MSG

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase == 'y'
end

prompt "Thanks for playing. Good Bye!"
