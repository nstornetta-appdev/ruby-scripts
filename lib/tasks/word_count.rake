desc "Calculate word count statistics"
task :word_count do
  path_to_text = Rails.root + "lib/input_files/word_count_text.txt"
  text = open(path_to_text).read
  cleaned_text = text.gsub("\n", "")

  path_to_special_word = Rails.root + "lib/input_files/word_count_special_word.txt"
  special_word = open(path_to_special_word).read.gsub("\n", "")

  word_counter = 0
  cleaned_text.split(" ").each do |word|
    cleaned_word = word.gsub(".", "")
    if cleaned_word == special_word
      word_counter += 1
    end
  end
  
  ap("File input: #{text}")
  ap("Character count (with spaces): #{cleaned_text.length}")
  ap("Character count (without spaces): #{cleaned_text.gsub(/\s+/, "").length}")
  ap("Occurrences of '#{special_word}': #{word_counter}")
end
