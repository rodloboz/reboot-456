
require_relative "calculator"
require_relative "view"

# Welcome message
# START LOOP=====
# Ask the user for the first number (puts)
# Store the user answer (gets.chomp => variable)
# Ask the user for the second number (puts)
# Store the user answer (gets.chomp => variable)
# Ask the user for the operation [+ - * /] (puts)
# Store the user answer (gets.chomp => variable)
# Calculate the operation with the numbers
##
# Test which operator the user picked if/elsif | case
# Then do the corresponding operation
##
# Display the result to the user
# Ask user if they want to calculate again
# Store User answer
# If yes => GO TO LINE 5
# If no => exit
# END LOOP HERE ====
# Print goodbye message



# MAIN PROGRAM STARTS HERE:
welcome
choice = "yes"

while choice.match?(/y(es)?/i)
  first_number = ask_for("first")
  second_number = ask_for("second")
  operator = ask_for_operator
  result = calculate(first_number, second_number, operator)

  puts "Result: #{result}"

  puts "Do you want to calculate again?"
  print "> "
  choice = gets.chomp
end

puts "Goodbye!"














