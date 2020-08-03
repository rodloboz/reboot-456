def display_menu
  puts "      Menu     "
  puts "==============="
  puts "1. (L) List"
  puts "2. (A) Add"
  puts "3. (D) Delete"
  puts "4. (M) Mark"
  puts "5. (I) Import"
  puts "9. (Q) Quit"
  puts_new_line
end

def display_items
  puts "Here are the items on your list:"
  ITEMS.each_with_index do |item, index|
    checked = item[:completed] ? "X" : " "
    puts "#{index + 1} - [#{checked}] #{item[:name]}"
  end
  puts_new_line
end

def display_articles(articles)
  puts "We found these items in Alcampo:"
  articles.each_with_index do |article, index|
    puts "#{index + 1} - #{article}"
  end
  puts_new_line
end

def ask_for_action
  puts "Which action?"
  print "> "
end

def ask_for_item(action)
  puts "Which item do you want to #{action}?"
  print "> "
end

def ask_for_index(action, length = ITEMS.length)
  puts "Which item do you want to #{action}? (1-#{length})"
  print "> "
end

def puts_invalid_item(index)
  puts "Can't find item ##{index}"
  puts_new_line
end

def puts_new_lines(lines = 1)
  lines.times { new_line }
end

def puts_new_line
  puts "\n"
end

def clear_screen
  system "clear"
end