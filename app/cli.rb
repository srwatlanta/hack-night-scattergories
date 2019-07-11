require "require_all"
require "tty-prompt"
require "artii"

def prompt
  TTY::Prompt.new
end

def welcome_banner
  puts `clear`
  welcome_message = Artii::Base.new
  puts welcome_message.asciify("Scattergories")
end

def goodbye
  puts `clear`
  goodbye_message = Artii::Base.new
  puts goodbye_message.asciify("Goodbye!")
end

def categories_banner
  puts `clear`
  list_banner = Artii::Base.new
  puts list_banner.asciify("Categories")
end

def letter_banner
  letter_banner = Artii::Base.new
  puts letter_banner.asciify("Letter")
end

def current_letter
  x = letter
  x
end

def big_letter
  big_letter = Artii::Base.new
  puts big_letter.asciify(current_letter)
end

def input
  gets.chomp.downcase
end

def round(category)
  puts `clear`
  letter_banner
  big_letter
  answer_array = []
  puts category[0]
  answer_array << answer1 = input
  puts category[1]
  answer_array << answer2 = input
  puts category[2]
  answer_array << answer3 = input
  puts category[3]
  answer_array << answer4 = input
  puts category[4]
  answer_array << answer5 = input
  puts category[5]
  answer_array << answer6 = input
  puts category[6]
  answer_array << answer7 = input
  puts category[7]
  answer_array << answer8 = input
  puts category[8]
  answer_array << answer9 = input
  puts category[9]
  answer_array << answer10 = input
  puts category[10]
  answer_array << answer11 = input
  puts category[11]
  answer_array << answer12 = input
  puts category[12]
  answer_array
end

def round_check
  points = 0
  round.each do |answer|
    if answer.start_with?(current_letter)
      points += 1
    end
  end
  puts "You scored #{points} points this round."
end

def select_deck
end

def start_single_game
  categories_banner
  current_category = game_cards[0]
  puts current_category
  #   letter_banner
  #   big_letter
  sleep(2)
  round(current_category)
  round_check
end

def welcome
  welcome_banner
  start_choice = prompt.select("Welcome!", ["Start single-player game", "Start multi-player game", "View rules", "Exit"])
  if start_choice == "Start single-player game"
    start_single_game
  elsif start_choice == "Start multi-player game"
    start_multi_game
  elsif start_choice == "View rules"
    rules
  else
    goodbye
  end

  def start_multi_game
  end
end
