require_relative "welcome"
require_relative "horses"

# Welcome player
# Ask player's name
# Create a player with a starting balance of 100
# ===== START LOOP HERE =========
# Show a list of horses => Array of strings
# Ask player which horse they want to bet on
# EACH_WITH_INDEX (player picks an index)
# Store the player's choice
# Ask player how much they want to bet
# Ensure player is betting at least 10
# store player's bet
# Run the race...
# random winner (#sample)
# Print the results/winner
# Tell player if they won or lost (if/else)
# (read the horse from the player's picked index)
# If player won update balance X2
# If player lost deduct value of bet from balance

# Ask player do they want to continue playing
# If player has less than 10 - GAME OVER
# ======== END LOOP HERE =======

# SECOND V. => Make it loop
# THIRD V. => Add monetary bets to the game

# player = { name: "John", balance: 100 }


# index:   0 , 1, 2
numbers = [1, 2, 3]

HORSES = [
  "Seabiscuit",
  "Kurt Cobain",
  "Linkin Park",
  "Ruby",
  "Michael Bolton",
  "Tyson",
  "Jimi"
]

# 1 - Seabiscuit
# 2 - Kurt Cobain
# ...

# MAIN PROGRAM BEING HERE
welcome

loop do
  puts "Here's the roster for the race:"
  display_horses(HORSES)

  puts "Pick a horse [1-#{HORSES.size}]:"
  print "> "
  # Convert to integer and to the real index
  player_choice = gets.chomp.to_i - 1

  race_results = run_race
  winner = race_results.first
  player_horse = HORSES[player_choice]

  puts "The winning horse was #{winner}!"
  puts "You picked #{player_horse}."
  if winner == player_horse
    puts "You win!"
  else
    puts "You lost"
  end

  puts "\n"
  puts "Do you want to continue playing? (Y)es / (N)o"
  choice = gets.chomp

  until choice.match?(/y(es)?/i) || choice.match?(/n(o)?/i)
    puts "Pick (Y)es or (N)o!"
    choice = gets.chomp
  end

  break if choice.match?(/n(o)?/i)
end

puts "Game over! Goodbye..."













