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

def draw_card!(current_player, deck)
  current_player << deck.pop
  adjust_ace_value(current_player)
end

def initial_draw(current_player, deck)
  2.times do
    draw_card!(current_player, deck)
  end
end

def calculate_total(current_player)
  user_total = 0
  current_player.each do |card|
    user_total += if ['Jack', 'Queen', 'King'].include?(card[0])
                    10
                  elsif card[0] == 'Ace'
                    11
                  else
                    card[0]
                  end
  end
  user_total
end

def adjust_ace_value(current_player)
  has_ace = current_player.select { |x| x[0] if x[0] == 'Ace' }
  score = calculate_total(current_player)

  if !has_ace.empty? && score > 21
    score - (10 * has_ace.size)
  else
    score
  end
end

def display_total(player_cards, dealer_cards)
  prompt "Player Total: #{adjust_ace_value(player_cards)}"
  prompt "Dealer Total: #{adjust_ace_value(dealer_cards)}"
end

def player_total(player_cards)
  adjust_ace_value(player_cards)
end

def dealer_total(dealer_cards)
  adjust_ace_value(dealer_cards)
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
  adjust_ace_value(current_player) > 21
end

def activate_dealer_hit(dealer_cards, player_cards, deck)
  if adjust_ace_value(dealer_cards) < 17 ||
     adjust_ace_value(dealer_cards) <
     adjust_ace_value(player_cards)
    prompt 'Dealer Chooses: Hit'
    draw_card!(dealer_cards, deck)
    prompt "Dealer's Card: #{dealer_cards.last[0]} of #{dealer_cards.last[1]}"
    activate_dealer_hit(dealer_cards, player_cards, deck)
  end
end

def dealer_hit_stay?(dealer_cards, player_cards, deck)
  # p dealer_cards
  activate_dealer_hit(dealer_cards, player_cards, deck)
  if busted(dealer_cards)
    compare_results(player_cards, dealer_cards)
  elsif adjust_ace_value(dealer_cards) >= 17 &&
        adjust_ace_value(dealer_cards) >=
        adjust_ace_value(player_cards)
    prompt "Dealer Chooses: Stay"
    compare_results(player_cards, dealer_cards)
  end
end

def activate_player_hit(player_cards, deck)
  draw_card!(player_cards, deck)
  prompt "Player's Card: #{player_cards.last[0]} of \
#{player_cards.last[1]}"
end

def player_hit_stay?(player_cards, dealer_cards, deck)
  answer = ''
  loop do
    answer = hit_or_stay_answer
    if answer.start_with?('s')
      prompt "Player Choose Stay! Dealer's Trun"
      break
    elsif answer.start_with?('h') && !busted(player_cards)
      activate_player_hit(player_cards, deck)
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
    prompt "Player Choose: (h) for Hit or (s) Stay?"
    answer = gets.chomp.downcase
    break if ['hit', 'stay', 'h', 's'].include?(answer)
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

def card_deck
  deck = []
  counter = 0
  4.times do
    CARDS.each do |x|
      deck << [x, TYPE[counter]]
    end
    counter += 1
  end
  deck.shuffle!
end

display_welcome_message

loop do
  deck = card_deck
  player_cards = []
  dealer_cards = []
  initial_draw(player_cards, deck)
  initial_draw(dealer_cards, deck)
  prompt "PLAYER CARDS: #{player_cards[0][0]} of #{player_cards[0][1]}\
 & #{player_cards[1][0]} of #{player_cards[1][1]}"
  prompt "DEALER CARDS: #{dealer_cards[0][0]} of #{dealer_cards[0][1]}\
 & Unknown Card"
  puts
  if player_hit_stay?(player_cards, dealer_cards, deck).start_with?('s')
    dealer_hit_stay?(dealer_cards, player_cards, deck)
  end
  break if play_again? == 'n'
  system 'clear'
end

prompt "Thanks for playing! Bye Bye"
