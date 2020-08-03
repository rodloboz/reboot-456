

# > In our store today:
# > kiwi: 1.25€
# > banana: 0.5€
# > mango: 4€
# > asparagus: 9€


# Display welcome
# Show the list of Store Items
# Ask user which item they want
# If item exists in store => add to cart
# If item does not exist in store => say item does not exist
# If item is 'quit' => go to checkout
#
#
# ADD TO CART
# Add item as a key of CART
# if item already in CART, update value
# CHECKOUT:
# > -------BILL---------
# > TOTAL: 14.5€
# Iterare over the hash values and sum them up
# display Total

def welcome
  puts "--------------------"
  puts "Welcome to Instacart"
  puts "--------------------"
end

def display_items
  STORE.each do |item, price|
    # This runs as many times as we have items
    puts "#{item}: #{price}€"
  end
  puts "--------------------"
end

def ask_for_item
  puts "Which item? (or 'quit' to checkout)"
  print "> "
  gets.chomp
end

def add_to_cart(item)
  CART[item] += 1
end

def checkout
  total = 0
  puts "-------BILL---------"
  CART.each do |item, quantity|
    line_total = STORE[item] * quantity
    total += line_total
    puts "#{item}: #{quantity} X #{STORE[item]}€ = #{line_total}€"
  end
  puts "TOTAL: #{total}€"
  puts "--------------------"
end


STORE = {
  "kiwi" => 1.25,
  "banana" => 0.5,
  "mango" => 4,
  "asparagus" => 9
}

CART = Hash.new(0)

# MAIN PROGRAM

welcome
display_items

loop do
  item = ask_for_item

  # if item == "quit"
  #   break
  # end

  break if item.match?(/q(uit)?/i)

  if STORE.key?(item)
    add_to_cart(item)
  else
    puts "Sorry, we don't have #{item} today.."
  end
end

checkout











