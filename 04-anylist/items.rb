def add_item(name, completed = false)
  ITEMS << { name: name, completed: completed }
end

def delete_item(index)
  ITEMS.delete_at(index)
end

def mark_item(index)
  item = ITEMS[index]
  item[:completed] = !item[:completed]
end

def valid_index?(index)
  index.match?(/^\d+$/) && (0...ITEMS.size).include?(index.to_i - 1)
end
