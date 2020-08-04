# USER STORIES
# ===========
# As a User, I can list all items
# As a User, I can add a new item
# As a User, I can delete an item
# As a User, I can mark an item as completed
# As a User, I can import an item from Alcampo


# Welcome user
# ===== START LOOP HERE (loop)
# display the menu/options (puts)
# ask the user for action (gets.chomp)
# store the action
# execute the action (case the variable)
# ==== END LOOP HERE (break)

# ITEM is { name: "bananas", completed: false }

# 1 - [ ] sockets
# 2 - [X] ruby book

# LIST
# go through each item in the list (each_with_index)
# check if item is completed
# display the item  (puts)

# ADD
# ask the user which item they want to add
# store the name the user gives
# create an item with the value of false for completed
# add the new item to the items list

# DELETE
# display all the items to the user (sees index + 1)
# ask the user which item they want to delete (with index)
# convert index to real index (index - 1)
# store the user answer (index)
# Delete item from list (using the index)

# MARK
# display all the items to the user (sees index + 1)
# ask the user which item they want to mark (with index)
# convert index to real index (index - 1)
# store the user answer (index)
# toggle/mark item complete attributed
# (if it's true => false, if it's false => true)

require_relative "view"
require_relative "welcome"

require "byebug"

ITEMS = [
  { name: "bananas", completed: false },
  { name: "socks", completed: true }
]

puts_welcome

loop do
  display_menu
  ask_for_action
  action = gets.chomp

  case action
  when /^l(ist)?|1$/i
    clear_screen
    display_items
    puts "\n"
  when /^a(dd)?|2$/i
    puts "Adding item..."
  when /^d(elete)?|3$/i
    puts "Deleting item..."
  when /^m(ark)?|4$/i
    puts "Marking item..."
  when /^q(uit)?|9$/i
    break
  end
end

puts "Goodbye"






