
require "json"
require "pp"
class Game
    
    alphabet_array = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "R", "S", "T", "W"]

    def category
    end

    def list
    end

    def letter
        alphabet_array.sample
    end


end

# generate a list from the json file sampling 12 options
# generate a letter from an array of 20 letters
# create a 3  minute timer
# provide input field for answers
# how to validate answers and award points for them
