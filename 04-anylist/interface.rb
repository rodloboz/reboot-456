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

# IMPORT
# Ask the user which item they want to import/search
# store user answer
# visit Alcampo and scrape a list of items with that name
# display the list of found items to the user
# ask the user which of those items they want to import
# create item and add it to the ITEMS list

require_relative "items"
require_relative "services"
require_relative "view"
require_relative "welcome"

require "byebug"

ITEMS = load_csv

puts_welcome

loop do
  puts_new_line
  display_menu
  ask_for_action
  action = gets.chomp

  case action
  when /^l(ist)?|1$/i
    clear_screen
    display_items
  when /^a(dd)?|2$/i
    clear_screen
    ask_for_item(:add)
    item = gets.chomp
    next if item.empty?
    add_item(item)
    display_items
  when /^d(elete)?|3$/i
    clear_screen
    display_items
    puts_new_line
    ask_for_item(:delete)
    index = gets.chomp
    if valid_index?(index)
      delete_item(index.to_i - 1)
      display_items
    else
      puts_invalid_index(index)
    end
  when /^m(ark)?|4$/i
    clear_screen
    display_items
    puts_new_line
    ask_for_item(:mark)
    index = gets.chomp
    if valid_index?(index)
      mark_item(index.to_i - 1)
      display_items
    else
      puts_invalid_index(index)
    end
  when /^i(mport)?|5$/i
    ask_for_item(:import)
    item = gets.chomp
    results = fetch_from_alcampo(item)
    display_results(results)
    ask_for_item(:import)
    index = gets.chomp.to_i - 1
    add_item(results[index])
    display_items
  when /^q(uit)?|9$/i
    break
  else
    puts "Invalid option."
  end
end

puts "Goodbye"






