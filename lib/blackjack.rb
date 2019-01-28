def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
  # code #deal_card here
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
    ran1 = deal_card
    ran2 = deal_card
    total = ran1 + ran2
    display_card_total(total)
    total
end

def hit?(number)
  prompt_user
  input = get_user_input
  if input == "s"
     number
  elsif input == "h"
      add = deal_card
      sum = add + number
       sum
  elsif input != "h" || "s"
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
    total = initial_round
    until total > 21
      total = hit?(total)
      display_card_total(total)
    end
  end_game(total)
  end
