TYPE = ['Spades', 'Hearts', 'Diamonds', 'Clubs']
CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']

def prompt(msg)
  puts "=> #{msg}"
end

def display_welcome_message
  system('clear')
  puts <<-MSG
         !!Welcome to Twenty-One Game!!
              Press Enter To Start
  MSG
  gets
  sleep(1)
  prompt "Shuffling cards, please wait.."
  sleep(1)
  prompt "Dealing Cards.."
  sleep(1)
  puts
end

def draw_card!(drawn_cards, current_player)
  new_card = [CARDS.sample, TYPE.sample]
  if drawn_cards.length > 1 && drawn_cards.include?(new_card)
    draw_card!(drawn_cards, current_player)
  else
    drawn_cards << new_card
    current_player << drawn_cards.last
    calculate_total(current_player)
  end
end

def initial_draw(drawn_cards, current_player)
  2.times do
    draw_card!(drawn_cards, current_player)
  end
end

def calculate_total(current_player)
  user_total = 0
  current_player.each do |card|
    if ['Jack', 'Queen', 'King'].include?(card[0])
      user_total += 10
    elsif card[0] == 'Ace' && user_total < 11
      user_total += 11
    elsif card[0] == 'Ace' && user_total >= 11
      user_total += 1
    else
      user_total += card[0]
    end
  end
  user_total
end

def display_total(player_cards, dealer_cards)
  prompt "Player Total: #{calculate_total(player_cards)}"
  prompt "Dealer Total: #{calculate_total(dealer_cards)}"
end

def player_total(player_cards)
  calculate_total(player_cards)
end

def dealer_total(dealer_cards)
  calculate_total(dealer_cards)
end

def player_win(player_total, dealer_total)
  if dealer_total > player_total && dealer_total > 21
    prompt "PLAYER WINS"
  elsif player_total > dealer_total && player_total <= 21
    prompt "PLAYER WINS"
  end
end

def dealer_win(player_total, dealer_total)
  prompt "DEALER WINS" if (player_total > dealer_total && player_total > 21) ||
                          (dealer_total > player_total && dealer_total <= 21)
end

def compare_results(player_cards, dealer_cards)
  display_total(player_cards, dealer_cards)

  if player_total(player_cards) == dealer_total(dealer_cards)
    prompt "It's a Draw"
  end
  player_win(player_total(player_cards), dealer_total(dealer_cards))
  dealer_win(player_total(player_cards), dealer_total(dealer_cards))
end

def busted(current_player)
  calculate_total(current_player) > 21
end

def activate_dealer_hit(drawn_cards, dealer_cards, player_cards)
  if calculate_total(dealer_cards) < 17 ||
     calculate_total(dealer_cards) < calculate_total(player_cards)
    prompt 'Dealer Chooses: Hit'
    draw_card!(drawn_cards, dealer_cards)
    prompt "Dealer's Card: #{drawn_cards.last[0]} of #{drawn_cards.last[1]}"
    activate_dealer_hit(drawn_cards, dealer_cards, player_cards)
  end
end

def dealer_hit_stay?(drawn_cards, dealer_cards, player_cards)
  # p dealer_cards
  activate_dealer_hit(drawn_cards, dealer_cards, player_cards)
  if busted(dealer_cards)
    compare_results(player_cards, dealer_cards)
  elsif calculate_total(dealer_cards) >= 17 &&
        calculate_total(dealer_cards) >= calculate_total(player_cards)
    prompt "Dealer Chooses: Stay"
    compare_results(player_cards, dealer_cards)
  end
end

def activate_player_hit(drawn_cards, player_cards)
  draw_card!(drawn_cards, player_cards)
  prompt "Player's Card: #{drawn_cards.last[0]} of \
#{drawn_cards.last[1]}"
end

def player_hit_stay?(drawn_cards, player_cards, dealer_cards)
  answer = ''
  loop do
    answer = hit_or_stay_answer
    if answer == 'stay'
      prompt "Player Choose Stay! Dealer's Trun"
      break
    elsif answer == 'hit' && !busted(player_cards)
      activate_player_hit(drawn_cards, player_cards)
      if busted(player_cards)
        compare_results(player_cards, dealer_cards)
        break
      end
    end
  end
  answer
end

def hit_or_stay_answer
  answer = ''
  loop do
    prompt "Player Choose: Hit or Stay?"
    answer = gets.chomp.downcase
    break if ['hit', 'stay'].include?(answer)
    prompt "Not a valid choice"
  end
  answer
end

def play_again?
  answer = ''
  loop do
    prompt "Play Again (y or n)?"
    answer = gets.chomp.downcase

    break if play_again_answer?(answer)
    prompt "Invalid Choice"
  end
  answer
end

def play_again_answer?(user_input)
  ['y', 'n'].include?(user_input)
end

display_welcome_message

loop do
  drawn_cards = []
  player_cards = []
  dealer_cards = []
  initial_draw(drawn_cards, player_cards)
  initial_draw(drawn_cards, dealer_cards)
  prompt "PLAYER CARDS: #{player_cards[0][0]} of #{player_cards[0][1]}\
 & #{player_cards[1][0]} of #{player_cards[1][1]}"
  prompt "DEALER CARDS: #{dealer_cards[0][0]} of #{dealer_cards[0][1]}\
 & Unknown Card"
  puts
  if player_hit_stay?(drawn_cards, player_cards, dealer_cards) == 'stay'
    dealer_hit_stay?(drawn_cards, dealer_cards, player_cards)
  end
  break if play_again? == 'n'
  system 'clear'
end

prompt "Thanks for playing! Bye Bye"
