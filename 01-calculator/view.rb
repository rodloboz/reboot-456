def ask_for(ordinal)
  puts "Enter a #{ordinal} number:"
  print "> "
  number = gets.chomp

  until number.match?(/^-?\d+$/)
    puts "Please write a valid number:"
    number = gets.chomp
  end

  number.to_i
end

def ask_for_operator
  puts "Choose operation [+][-][*][/]"
  print "> "
  operator = gets.chomp

  until operator.match?(/(\+|-|\*|\/)/)
    puts "Please pick a valid operation [+][-][*][/]"
    operator = gets.chomp
  end

  operator
end

def welcome
  puts "Welcome to the LW Calculator"
  puts "============================"
end
