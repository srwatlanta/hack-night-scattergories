#!/usr/bin/ruby
# require "rubygems"
require "json"
require "pp"

json = File.read("./data/categories.json")
obj = JSON.parse(json)

pp obj

# puts "hello"

class Game
  alphabet_array = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L"]

  def list
  end

  def category
  end
end

# generate a list from the json file sampling 12 options
# generate a letter from an array of 20 letters
# create a 3  minute timer
# provide input field for answers
# how to validate answers and award points for them
