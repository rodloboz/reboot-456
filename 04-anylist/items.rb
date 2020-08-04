require 'csv'

FILEPATH = './data/items.csv'
CSV_OPTIONS = {
    col_sep: ',',
    quote_char: '"',
    headers: :first_row,
    header_converters: :symbol
  }

def add_item(name, completed = false)
  ITEMS << { name: name, completed: completed }
  save_csv
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

def load_csv
  items = []
  CSV.foreach(FILEPATH, CSV_OPTIONS) do |row|
    # TODO: build new gift from information stored in each row
    # Convert the String boolean into a Real boolean
    row[:completed] = row[:completed] == "true"
    items << row.to_h
  end
  items
end

def save_csv
  # Guard clause
  return if ITEMS.empty?

  CSV.open(FILEPATH, 'wb', CSV_OPTIONS) do |csv|
    # We had headers to the CSV
    csv << ITEMS.first.keys
    #TODO: store each item
    ITEMS.each do |item|
      csv << item.values
    end
  end
end







