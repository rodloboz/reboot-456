def display_menu
  puts "      Menu     "
  puts "==============="
  puts "1. (L) List"
  puts "2. (A) Add"
  puts "3. (D) Delete"
  puts "4. (M) Mark"
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

def ask_for_action
  puts "Which action?"
  print "> "
end

def clear_screen
  system "clear"
end
