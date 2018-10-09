desc "Print the contents of example_input.txt"
task :example_input_from_file do
  path_to_file = Rails.root + "lib/input_files/example_input.txt"
  ap(path_to_file)

  example_input = open(path_to_file).read
  ap(example_input)
end

desc "Create a new input file and read from it"
task :your_own_input_from_file do
  path_to_file = Rails.root + "lib/input_files/my_input.txt"
  my_file_output = open(path_to_file).read
  file_output_array = my_file_output.split(" ")
  
  ap("The first word in the file is: #{file_output_array[0]}")
  ap("The last word in the file is: #{file_output_array[file_output_array.length-1]}")

end