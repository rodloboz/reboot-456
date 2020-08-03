require_relative "welcome"
require_relative "horses"
require_relative "player"

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

# Create player
name = ask_for("name")
player = create_player(name)


loop do
  puts "Here's the roster for the race:"
  display_horses(HORSES)

  puts "Pick a horse [1-#{HORSES.size}]:"
  print "> "
  # Convert to integer and to the real index
  horse_index = gets.chomp.to_i - 1

  bet = ask_for("bet").to_i
  while bet > player[:balance] || bet < 10
    puts "Invalid bet."
    puts "Pick between 10€ and #{player[:balance]}€"
    bet = gets.chomp.to_i
  end

  race_results = run_race
  winner = race_results.first
  player_horse = HORSES[horse_index]

  puts "The winning horse was #{winner}!"
  puts "You picked #{player_horse}."

  if winner == player_horse
    puts "You win!"
    player[:balance] = player[:balance] * 2
  else
    puts "You lost"
    player[:balance] = player[:balance] - bet
  end

  puts "You have #{player[:balance]}€."

  break if player[:balance] < 10


  puts "\n"
  puts "Do you want to continue playing? (Y)es / (N)o"
  choice = gets.chomp

  until choice.match?(/y(es)?/i) || choice.match?(/n(o)?/i)
    puts "Pick (Y)es or (N)o!"
    choice = gets.chomp
  end

  break if choice.match?(/n(o)?/i)
end

puts "You finished the game with #{player[:balance]}€"
puts "Game over! Goodbye..."













