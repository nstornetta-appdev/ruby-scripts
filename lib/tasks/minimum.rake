desc "Calculate minimum"
task :minimum do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

current_min = nil

  numbers.each do |num|
    if current_min == nil
      current_min = num
    elsif current_min > num
      current_min = num
    end
  end
  
  ap("Your numbers:")
  ap(numbers)
  ap("Minimum: #{current_min}")
end
