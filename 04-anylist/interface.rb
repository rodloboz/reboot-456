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

ITEMS = [
  { name: "bananas", completed: false },
  { name: "socks", completed: true }
]

require_relative "view"
require_relative "welcome"

puts_welcome

loop do
  display_menu
  ask_for_action
  action = gets.chomp

  case action
  when /^l(ist)?|1$/i
    puts "Listing items..."
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






