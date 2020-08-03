require "byebug"

def add_item(item, completed = false)
  return if item_exists?(item)

  ITEMS << { name: item, completed: completed }
end

def item_exists?(name)
  !ITEMS.find { |item| item[:name].downcase == name.downcase }.nil?
end

def valid_index?(index)
  index.match?(/^\d+$/) && (0...ITEMS.length).include?(index.to_i - 1)
end

def delete_item(index)
  ITEMS.delete_at(index)
end

def mark_item(index)
  item = ITEMS[index]
  item[:completed] = !item[:completed]
end