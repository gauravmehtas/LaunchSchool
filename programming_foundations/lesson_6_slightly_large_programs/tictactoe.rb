INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
NUMBER = 5
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "=> #{msg}"
end

def display_welcome
  prompt("Welcome to Tic Tac Toe! Win 5 rounds to be a Grand Winner.")
  prompt("Ready To Play.. Hit Enter")
  gets
end

def display_board(brd)
  system 'clear'
  puts <<-MSG

                       |     |
                    #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}
                       |     |
                  -----------------
                       |     |
                    #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}
                       |     |
                  -----------------
                       |     |
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
  WINNING_LINES.each do |arr|
    if brd.values_at(arr[0], arr[1], arr[2]).count(PLAYER_MARKER) == 2 &&
       brd.values_at(arr[0], arr[1], arr[2]).count(INITIAL_MARKER) == 1
      return arr.select { |square| brd[square] == INITIAL_MARKER }
    end
  end
  []
end

def computer_offence_move(brd)
  WINNING_LINES.each do |arr|
    if brd.values_at(arr[0], arr[1], arr[2]).count(COMPUTER_MARKER) == 2 &&
       brd.values_at(arr[0], arr[1], arr[2]).count(INITIAL_MARKER) == 1
      return arr.select { |square| brd[square] == INITIAL_MARKER }
    end
  end
  []
end

def computer_places_piece!(brd)
  defensive = computer_defence_move(brd)
  offensive = computer_offence_move(brd)
  if !offensive.empty?
    brd[offensive[0]] = COMPUTER_MARKER
  elsif !defensive.empty?
    brd[defensive[0]] = COMPUTER_MARKER
  elsif brd[NUMBER] == INITIAL_MARKER
    brd[NUMBER] = COMPUTER_MARKER
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end

def who_play_first
  prompt "Type 'X' go first or press Enter for Computer?"
  first_player = gets.chomp

  if first_player.downcase == 'x'
    [PLAYER_MARKER, COMPUTER_MARKER]
  elsif first_player == ''
    [COMPUTER_MARKER, PLAYER_MARKER]
  else
    prompt "Not a valid option."
    who_play_first
  end
end

def current_player_plays_piece!(brd, play_first, counter)
  if (counter.even? && play_first[0] == 'O') ||
     (counter.odd? && play_first[1] == 'O')
    computer_places_piece!(brd)
  else
    player_places_piece!(brd)
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

def play_again
  again = ''
  loop do
    prompt "Play again? (y on n)"
    again = gets.chomp
    if 'yYnN'.include?(again) && again != ''
      break
    else
      prompt "This is not a valid option"
    end
  end
  again.downcase
end

loop do
  display_welcome
  player_score = 0
  computer_score = 0
  draw = 0
  round = 1
  board = initialize_board
  winner = ''
  play_first = who_play_first

  until player_score == NUMBER || computer_score == NUMBER
    counter = 0
    loop do
      display_board(board)

      prompt "Round: #{round} | Player Score: #{player_score} |" \
      " Computer Score: #{computer_score} | Draw: #{draw}"

      current_player_plays_piece!(board, play_first, counter)
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
  break if play_again != 'y'
  system 'clear'
end

prompt "Thanks for playing. Good Bye!"
