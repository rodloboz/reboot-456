require "byebug"

# Arrays CRUD

# Create
# indexes -  0       1       2          3
beatles = ["John", "Paul", "Ringo", "George"]

# Read
beatles.first # the same as beatles[0]
# puts "What's the index?"
# index = gets.chomp.to_i

# Update
# an element
beatles[1] = "Michael"
p beatles

# the array
# by pushing new elements
beatles << "Peter"
p beatles

# Delete
# by index
beatles.delete_at(2) # delete_at is a method
p beatles

# by value
beatles.delete("Peter") # can delete more than 1 element
p beatles


# Iterating Array
beatles = ["John", "Paul", "Ringo", "George"]

beatles.each do |beatle|
  puts "#{beatle}"
end

beatles.each_with_index do |beatle, index|
  puts "#{index + 1} - #{beatle}"
end

puts "Which beatle?"
index = gets.chomp.to_i - 1

puts beatles[index]

upcased_beatles = []
beatles.each do |beatle|
  upcased_beatles << beatle.upcase
end
p upcased_beatles

map_beatles = beatles.map { |beatle| beatle.upcase }
p map_beatles













