def display_menu
  puts "      Menu     "
  puts "==============="
  puts "1. (L) List"
  puts "2. (A) Add"
  puts "3. (D) Delete"
  puts "4. (M) Mark"
  puts "5. (I) Import"
  puts "9. (Q) Quit"
  puts "\n"
end

def display_items
  puts "Here are the items on your list:"
  ITEMS.each_with_index do |item, index|
    marked = item[:completed] ? "X" : " "
    puts "#{index + 1} - [#{marked}] #{item[:name]}"
  end
end

def display_results(results)
  puts "Here are the results found on Alcampo:"
  results.each_with_index do |result, index|
    puts "#{index + 1} - #{result}"
  end
end

def ask_for_action
  puts "Which action?"
  print "> "
end

def ask_for_item(action)
  puts "Which item do you want to #{action}?"
  print "> "
end

def puts_invalid_index(index)
  puts "Could not find item with #{index}"
end

def clear_screen
  system "clear"
end

def puts_new_line
  puts "\n"
end



