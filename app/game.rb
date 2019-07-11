require "pry"
require "json"
require "pp"

class Game
  def category_list
    json = File.read("./data/categories.json")
    JSON.parse(json)
  end

  #   alphabet_array = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "R", "S", "T", "W"]

  def round_split
    shuffled_deck = category_list.shuffle
    #   binding.pry
    shuffled_deck.each_slice(12).to_a
  end

  def deck_maker
    round_split.each do |x|
      binding.pry
      x
    end
  end

  def list
  end

  def letter
    ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "R", "S", "T", "W"].sample
  end

  def make_rounds
    array = []
    array << round_1 = round_split[0]
    array << round_2 = round_split[1]
    array << round_3 = round_split[2]
    array << round_4 = round_split[4]
    array << round_5 = round_split[5]
    array << round_6 = round_split[6]
    array << round_7 = round_split[7]
    array << round_8 = round_split[8]
    array << round_9 = round_split[9]
    array << round_10 = round_split[10]
    array << round_11 = round_split[11]
    array << round_12 = round_split[12]
    array << round_13 = round_split[13]
    array << round_14 = round_split[14]
    array << round_15 = round_split[15]
    array << round_16 = round_split[16]
    array << round_17 = round_split[17]
    array << round_18 = round_split[18]
    array << round_19 = round_split[19]
    array << round_20 = round_split[20]
    array << round_21 = round_split[21]
    array << round_22 = round_split[3]
    array << round_23 = round_split[23]
    array << round_24 = round_split[24]
    array << round_25 = round_split[25]
    array
  end

  def game_cards
    make_rounds.sample(3)
  end

  def timer
    minutes = 3
    start_time = Time.now
    seconds = minutes * 60
    end_time = start_time + seconds
    while Time.now < end_time
    end
    system(%Q{say -v "Vick" "Pencils down. Time is up."})
  end

  def rules
    puts "Begin each round by rolling the letter die, and start the timer. If you roll a letter that had already been rolled during this game, re-roll. Players attempt to create an answer that begins with the letter on the die for each of the categories on their list. Answers must begin with the letter on the Scattergories die."
  end
end

pp game_cards[0]

# generate a list from the json file sampling 12 options √
# generate a letter from an array of 20 letters √
# create a 3  minute timer
# provide input field for answers
# how to validate answers and award points for them
