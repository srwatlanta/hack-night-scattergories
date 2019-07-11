require "require_all"
require "tty-prompt"
require "artii"

def prompt
  TTY::Prompt.new
end

def welcome_banner
  puts `clear`
  welcome_message = Artii::Base.new
  welcome_message.asciify("Welcome!")
end

def select_deck
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
    exit
  end
end
