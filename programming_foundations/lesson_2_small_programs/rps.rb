VALID_CHOICE = %w(rock paper scissors)

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
  (first == 'scissors' && second == 'paper') ||
  (first == 'paper' && second == 'rock')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You Win!')
  elsif win?(computer, player)
    prompt('Computer Win!')
  else
    prompt("It's a tie!")
  end
end

prompt('Welcome to the game!')

loop do
  player_choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICE.join(', ')}")
    player_choice = gets.chomp

    break if VALID_CHOICE.include?(player_choice)
    prompt('That\'s not a valid choice')
  end

  computer_choice = VALID_CHOICE.sample
  prompt("You choose #{player_choice} & Computer choose #{computer_choice}!")

  display_results(player_choice, computer_choice)

  prompt("Enter 'Y' to play again.")
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt('Thanks for playing. Good Day!')
