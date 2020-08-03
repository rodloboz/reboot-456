# welcome user
# ==== START LOOP => #loop
# display options/menu [list|add|delete|mark|quit]
# ask for user for action
# store answer
# execute the chosen action => #case
# ==== END LOOP

# LISTING
# { name: "iphone", marked: false }
# 1 - [ ] sockets
# 2 - [X] apples
# Go through each item in the list #each_with_index
# Check if item is marked or not
# Display item on the screen

# ADD
# ask user for which item to add
# save/store the answer => String
# create a new Hash { name: "choice", marked: false}
# push item hash into array of ITems

# DELETE
# display items
# ask user what they want to delete (index)
# delete item with index # delete_at(index)

# MARK
# display items
# ask use of which item to mark
# mark that item # => marked: false
# update item in list

require_relative "items"
require_relative "services"
require_relative "view"
require_relative "welcome"

ITEMS = [
  { name: "peaches", completed: false },
  { name: "napkins", completed: true }
]

puts_welcome
loop do
  display_menu
  ask_for_action
  action = gets.chomp
  case action
  when /l(ist)?|1/i
    clear_screen
    display_items
  when /a(dd)?|2/i
    clear_screen
    ask_for_item(:add)
    item = gets.chomp
    next if item.empty?
    add_item(item)
    new_line
    display_items
  when /d(elete)?|3/i
    clear_screen
    display_items
    ask_for_index(:delete)
    index = gets.chomp
    next if index.empty?
    if valid_index?(index)
      delete_item(index.to_i - 1)
      new_line
      display_items
    else
      puts_invalid_item(index)
    end
  when /m(ark)?|4/i
    clear_screen
    display_items
    ask_for_index(:mark)
    index = gets.chomp
    next if index.empty?
    if valid_index?(index)
      mark_item(index.to_i - 1)
      new_line
      display_items
    else
      puts_invalid_item(index)
    end
  when /i(mport)?|5/i
    clear_screen
    ask_for_item(:import)
    item = gets.chomp
    articles = fetch_from_alcampo(item)
    next if articles.empty?
    new_line
    display_articles(articles)
    ask_for_index(:import, articles.length)
    index = gets.chomp.to_i - 1
    add_item(articles[index])
    new_line
    display_items
  when /q(uit)?|9/i
    break
  else
    puts "Invalid option"
  end
end

puts "Goodbye!"