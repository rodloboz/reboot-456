

# Variables
first_name = "Peter"
students = ["John", "Peter", "Mary"]


# Define a method
def greeting(name)
  "Hello, #{name}!"
end


# Calling the method: Use the method
puts greeting("John")
puts greeting(first_name)

puts "============ EACH ============="

# Iterating over an Array
# Each
students.each do |student|
  puts "Hello, #{student}!"
end

new_array = []
students.each do |student|
  new_array << "Hello, #{student}!"
end
p new_array

result = students.map do |student|
  "Hello, #{student}!"
end
p result

puts "============ EACH_WITH_INDEX ============="


students.each_with_index do |student, index|
  puts "#{index + 1} - #{student}"
end
















