# require modules here
require 'yaml'

def load_library(file)
  # code goes here
  # return a hash with two keys set to inner hashes
  dictionary = {"get_meaning" => {}, "get_emoticon" => {}}
  # load the file
  emoticons = YAML.load_file(file)
  # iterate over each english meaning in the file made up of an array of two elements (Eng, Jap)
  emoticons.each do |meaning, array|
    # create empty arrays for English and Japanese emoticons
    english_emoticons, japanese_emoticons = array
    # set keys inside get_meaning hash to Japanese emoticons
    dictionary["get_meaning"][japanese_emoticons] = meaning
    dictionary["get_emoticon"][english_emoticons] = japanese_emoticons
  end
  # return dictionary
  dictionary
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
