desc "Count and sort numbers"
task :count_and_sort do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  string_input = open(path_to_file).read.chomp
  numbers = string_input.gsub(",", "").split.map(&:to_f)

  sorted_numbers = numbers.sort
  ap("Your numbers:")
  ap(numbers)
  ap("Count: #{numbers.length}")
  ap("Sorted numbers:")
  ap(sorted_numbers)

end
