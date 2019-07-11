#!/usr/bin/ruby
# require "rubygems"
require "json"
require "pp"

def category_list
    json = File.read("./data/categories.json")
    JSON.parse(json)
end
    

def category
    category_array = []
    12.times do
        category_array << category_list.sample
    end
end

def list
end

def letter
    ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "R", "S", "T", "W"].sample
end

def timer
    minutes = 3
    start_time = Time.now
    seconds = minutes * 60
    end_time = start_time + seconds 
    while Time.now < end_time
    end
    system(%Q{say -v "Vick" "Your tomato has exploded. Time is up."})
end

def rules
    puts "Begin each round by rolling the letter die, and start the timer. If you roll a letter that had already been rolled during this game, re-roll. Players attempt to create an answer that begins with the letter on the die for each of the categories on their list. Answers must begin with the letter on the Scattergories die."
end



# generate a list from the json file sampling 12 options
# generate a letter from an array of 20 letters
# create a 3  minute timer
# provide input field for answers
# how to validate answers and award points for them
