VALID_CHOICES = %w(rock paper scissors lizard spock)

def display_intro
  puts <<-MSG

                 WELCOME TO THE GAME

                        ROCK
                         /\\
                        /  \\
                       /    \\
                      /      \\
                   PAPER  SCISSORS
                      |      |
                      |      |
                      |      |
                  LIZARD    SPOCK
                       \\____/
                       ||  ||
                      /  \\/  \\

  MSG
end

def prompt(message)
  puts "=> #{message}"
end

display_value = [{ "paper" => "spock" },
                 { "paper" => "rock" },
                 { "rock" => "scissors" },
                 { "rock" => "lizard" },
                 { "lizard" => "paper" },
                 { "lizard" => "spock" },
                 { "scissors" => "lizard" },
                 { "scissors" => "paper" },
                 { "spock" => "rock" },
                 { "spock" => "scissors" }]

def display_result(player_choice, computer_choice, current_score, display_value)
  display_value.select do |x|
    if x.key?(player_choice) && x.fetch(player_choice) == computer_choice
      puts "you win"
      current_score[:player] += 1
      break
    elsif x.key?(computer_choice) && x.fetch(computer_choice) == player_choice
      puts "computer win"
      current_score[:computer] += 1
      break
    elsif player_choice == computer_choice
      puts "it's a tie"
      break
    end
  end
end

valid_choice_player = {
  "r": "rock",
  "p": "paper",
  "s": "scissors",
  "l": "lizard",
  "sp": "spock"
}

current_score = { player: 0, computer: 0 }

def display_player_selection_score(valid_choice_player, current_score)
  puts <<-MSG
    Select One                    Score

=> 'r' for #{valid_choice_player[:r]}                PLAYER SCORE:    #{current_score[:player]}
=> 'p' for #{valid_choice_player[:p]}               COMPUTER SCORE:  #{current_score[:computer]}
=> 's' for #{valid_choice_player[:s]}
=> 'l' for #{valid_choice_player[:l]}
=> 'sp' for #{valid_choice_player[:sp]}"

Your Choice:

  MSG
end

def score_reset(current_score)
  current_score[:player] = 0
  current_score[:computer] = 0
end

def display_exit(current_score)
  puts <<-MSG

       THANKS FOR PLAYING

              ROCK
               /\\
              /  \\
             /    \\
            /      \\
         PAPER  SCISSORS
            |      |
        ~~~~~~~~~~~~~~~~
        !!#{current_score.key(5).upcase} WINS!!
        ~~~~~~~~~~~~~~~~
            |      |
        LIZARD    SPOCK
             \\____/
            ||    ||
           /  \\  /  \\

    MSG
end

display_intro

loop do
  player_choice = ''

  loop do
    display_player_selection_score(valid_choice_player, current_score)
    choice_made = gets.chomp
    valid_choice_player.select do |k, v|
      player_choice = v if k.to_s == choice_made
    end
    break if player_choice.length > 1
    prompt('Not a valid choice, select a valid option')
  end

  computer_choice = VALID_CHOICES.sample
  prompt("Your Choice: #{player_choice}, Computer Choice: #{computer_choice}")
  display_result(player_choice, computer_choice, current_score, display_value)

  if current_score[:player] == 5 || current_score[:computer] == 5
    prompt("Grand Winner: #{current_score.key(5)}!")
    display_exit(current_score)
    score_reset(current_score)
    prompt("To play again, enter 'y'")
    start_again = gets.chomp
    break unless start_again.downcase.start_with?('y')
    system('clear')
    display_intro
  end
end

puts <<-MSG

        'Thanks for playing. Good Day!'
MSG
