def display_horses(horses)
  horses.each_with_index do  |horse, index|
    puts "#{index + 1} - #{horse}"
  end
end

def run_race
  race_results = []
  [1, 2, 3].each do |lap|
    sleep(1)
    puts "\n"
    puts "Horses running lap #{lap}..."
    puts "Here's their positions:"
    race_results = HORSES.shuffle
    display_horses(race_results)
  end

  race_results
end
