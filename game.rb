# YOUR CODE GOES HERE
puts "WELCOME TO ROCK PAPER SCISSORS"
print "\nChoose your weapon (r)ock, (p)aper, or (s)cissors!\n> "

user_choice = gets.chomp[0].downcase

def GameRPS(user_choice)
  game_result = nil
  options = ["r", "p", "s"]
  while !options.include?(user_choice)
    print "\nThat's not a choice. Try again!\n> "
    user_choice = gets.chomp[0].downcase
  end

  comp_choice = rand(3)+1
  sleep(1)
  if user_choice == "r" || user_choice == "R"
    puts "\nYou chose ROCK!"
    sleep(1)
    case comp_choice
    when 1
      puts "\nComputer chose rock."
      game_result = "tie"
    when 2
      puts "\nComputer chose paper. Computer WINS! Better luck next time."
    when 3
      puts "\nComputer chose scissors. You WIN! Next time you won't be so lucky . . ."
    end
  elsif user_choice == "p" || user_choice == "P"
    puts "\nYou chose PAPER!"
    sleep(1)
    case comp_choice
    when 1
      puts "\nComputer chose rock. You WIN! Next time you won't be so lucky . . ."
    when 2
      puts "\nComputer chose paper."
      game_result = "tie"
    when 3
      puts "\nComputer chose scissors. Computer WINS! Better luck next time."
    end
  elsif user_choice == "s" || user_choice == "S"
    puts "\nYou chose SCISSORS!"
    sleep(1)
    case comp_choice
    when 1
      puts "\nComputer chose rock. Computer WINS! Better luck next time."
    when 2
      puts "\nComputer chose paper. You WIN! Next time you won't be so lucky . . ."
    when 3
      puts "\nComputer chose scissors."
      game_result = "tie"
    end
  end

  if game_result == "tie"
    puts "\nIt's a TIE! Try again. Choose (r)ock, (p)aper, or (s)cissors!"
    user_choice = gets.chomp[0]
    GameRPS(user_choice)
  end
end

GameRPS(user_choice)
