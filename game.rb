require "pry"
require "json"
require "pp"

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

round_1 = round_split[0]
round_2 = round_split[1]
round_3 = round_split[2]
round_4 = round_split[4]
round_5 = round_split[5]
round_6 = round_split[6]
round_7 = round_split[7]
round_8 = round_split[8]
round_9 = round_split[9]
round_10 = round_split[10]
round_11 = round_split[11]
round_12 = round_split[12]
round_13 = round_split[13]
round_14 = round_split[14]
round_15 = round_split[15]
round_16 = round_split[16]
round_17 = round_split[17]
round_18 = round_split[18]
round_19 = round_split[19]
round_20 = round_split[20]
round_21 = round_split[21]
round_22 = round_split[3]
round_23 = round_split[23]
round_24 = round_split[24]
round_25 = round_split[25]

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

# pp letter

# generate a list from the json file sampling 12 options √
# generate a letter from an array of 20 letters √
# create a 3  minute timer
# provide input field for answers
# how to validate answers and award points for them
