desc "Play rock in rock-paper-scissors"
rps_array = ["rock", "paper", "scissors"]
computer_selection = rps_array[rand(2)]
outcome = nil

task :play_rock do
  if computer_selection == "rock"
    outcome = "We tied!"
  elsif computer_selection == "paper"
    outcome - "We lost!"
  elsif computer_selection == "scissors"
    outcome == "We won!"
  end
  puts("We played rock.\nThe computer chose #{computer_selection}.\n#{outcome}")
end

desc "Play paper in rock-paper-scissors"
task :play_paper do
  if computer_selection == "rock"
    outcome = "We won!"
  elsif computer_selection == "paper"
    outcome - "We tied!"
  elsif computer_selection == "scissors"
    outcome == "We lost!"
  end
  puts("We played paper.\nThe computer chose #{computer_selection}.\n#{outcome}")
end

desc "Play scissors in rock-paper-scissors"
task :play_scissors do
  if computer_selection == "rock"
    outcome = "We lost!"
  elsif computer_selection == "paper"
    outcome - "We won!"
  elsif computer_selection == "scissors"
    outcome == "We tied!"
  end
  puts("We played scissors.\nThe computer chose #{computer_selection}.\n#{outcome}")
end
