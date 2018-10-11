# VALID_CHOICES_PLAYER = { "r":"rock", "p":"paper", "s":"scissors", "l":"lizard", "sp":"spock" }

# player_choice = ''

# puts <<-MSG
#   "Select One:  'r' for #{VALID_CHOICES[:r]}
#                 'p' for #{VALID_CHOICES[:p]}
#                 's' for #{VALID_CHOICES[:s]}
#                 'l' for #{VALID_CHOICES[:l]}
#                 'sp' for #{VALID_CHOICES[:sp]}"
# MSG

# loop do
#   choice_made = gets.chomp
#   VALID_CHOICES_PLAYER.select { |k, v| player_choice = v if k.to_s == choice_made}
#   break if player_choice.length > 1
#   puts("Not a valid choice, select a valid option")
# end


# puts player_choice

def display_result(player_choice, computer_choice, current_score)

  display_value = [
    {"paper"=>"rock"},
    {"paper"=>"scissors"},
    {"rock"=>"scissors"},
    {"rock"=>"lizard"},
    {"spock"=>"rock"},
    {"lizard"=>"paper"},
    {"lizard"=>"spock"},
    {"scissors"=>"lizard"},
    {"scissors"=>"paper"},
    {"spock"=>"rock"},
    {"spock"=>"scissors"}
  ]

  display_value.select do |x|
    if x.has_key?(player_choice) && x.fetch(player_choice) == computer_choice
      puts "you win"
      current_score[:player] += 1
      break
    elsif x.has_key?(computer_choice) && x.fetch(computer_choice) == player_choice
      puts "computer win"
      current_score[:computer] += 1
      break
    elsif player_choice == computer_choice
      puts "it's a tie"
      break
    end
  end
end