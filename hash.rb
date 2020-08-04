# HASH CRUD

# Create
car = {
  brand: "Ferrari",
  color: "Red",
  model: "Testarossa"
}

# Read
puts "The car's brand is #{car[:brand]}"

# Update
# change the value of a key
car[:color] = "Yellow"
puts "The new car color is #{car[:color]}"

# add a new key
car[:year] = 1987
p car

# Delete
car.delete(:year)
p car

# GET ALL KEYS
p car.keys # Returns an Array

# GET ALL VALUES
p car.values # Return an Array

# Check if a key exists?
puts car.key?(:year)
puts car.key?(:brand)

# Iteraring
values = []
car.each do |_k, value|
  values << value
end
p values










