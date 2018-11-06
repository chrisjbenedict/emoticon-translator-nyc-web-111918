# require modules here
require 'yaml'

def load_library(file)
  # code goes here
  # return a hash with two keys set to inner hashes
  dictionary = {"get_meaning" => {}, "get_emoticon" => {}}
  # load the file
  emoticons = YAML.load_file(file)
  # iterate over each english meaning key in the file made up of an array of two elements (Eng, Jap)
  emoticons.each do |meaning, emoticons|
    # keys in get_meaning hash are japanese_emoticons
    # keys in get_emoticon hash are english_emoticons
    english_emoticons, japanese_emoticons = emoticons
    # emoticon keys in get_meaning point to meanings
    dictionary["get_meaning"][japanese_emoticons] = meaning
    # emoticon keys in get_emoticon point to Japanese equivalents
    dictionary["get_emoticon"][english_emoticons] = japanese_emoticons
  end
  # return dictionary
  dictionary
end

def get_japanese_emoticon(file, emoticon)
  # code goes here
  library = load_library(file)
  japanese_emoticon = library["get_emoticon"][emoticon]
  if japanese_emoticon
    japanese_emoticon
  else
    "Sorry, emoticon not found."
end

def get_english_meaning
  # code goes here
end
