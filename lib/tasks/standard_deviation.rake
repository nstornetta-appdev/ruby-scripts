desc "Calculate standard deviation"
task :standard_deviation do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)
  
  mean, stdev = numbers.sum/numbers.length, nil, nil
  squared_differences = []
  
  numbers.each do |num|
    squared_differences.push((num-mean)**2)
  end
  
  stdev = Math.sqrt(squared_differences.sum/squared_differences.length)
  
  ap("Your numbers:")
  ap(numbers)
  ap("Standard Deviation: #{stdev}")
end
