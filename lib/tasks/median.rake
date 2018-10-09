desc "Calculate median"
task :median do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  sorted = numbers.sort
  median = nil
  if numbers.length % 2
    median = sorted[numbers.length/2] + sorted[numbers.length/2-1]  
  else
    median = sorted[numbers.length/2]  
  end
  ap("Your numbers:")
  ap(numbers)
  ap("Median: #{median}")
end
