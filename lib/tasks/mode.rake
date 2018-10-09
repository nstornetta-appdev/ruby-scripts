desc "Calculate mode"
task :mode do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)
  
  counter_hashmap = {}
  
  numbers.each do |num|
    if counter_hashmap[num] == nil
      counter_hashmap[num] = 1
    else
      counter_hashmap[num] += 1
    end
  end
  
  mode, count = nil, nil
  counter_hashmap.keys.each do |key|
    if mode == nil
      mode, count = key, counter_hashmap[key]
    elsif count < counter_hashmap[key]
      mode, count = key, counter_hashmap[key]
    end
  end

ap("Your numbers:")
ap(numbers)
ap("Mode: #{mode}")

end
