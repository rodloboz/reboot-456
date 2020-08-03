def ask_for(action)
  puts "What's your #{action}?"
  print "> "
  gets.chomp
end

def create_player(name, balance = 100)
  { name: name, balance: 100 }
end
