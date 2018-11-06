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
    dictionary["get_meaning"] = array[0]
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
