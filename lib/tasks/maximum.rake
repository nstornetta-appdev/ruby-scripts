desc "Calculate maximum"
task :maximum do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

current_max = nil

  numbers.each do |num|
    if current_max == nil
      current_max = num
    elsif current_max < num
      current_max = num
    end
  end
  
  ap("Your numbers:")
  ap(numbers)
  ap("Maximum: #{current_max}")
end
