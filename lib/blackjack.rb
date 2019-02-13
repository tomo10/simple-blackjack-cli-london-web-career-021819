def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(x)
  puts "Your cards add up to #{x}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(y)
  puts "Sorry, you hit #{y}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1 + card2)
  return card1 + card2
  
end

def hit?(card_tot)
  prompt_user
  choice = get_user_input
  if choice == 'h'
    card_tot += deal_card
  elsif choice == 's'
    card_tot
  else
  invalid_command
  
  end
end 

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  
  until card_total > 21
  card_total = hit?(card_total)
  display_card_total(card_total)
  
  
end 
  end_game(card_total)
end