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
  # loads library
  library = load_library(file)
  # sets japanese_emoticon to equivalent english emoticon in library
  japanese_emoticon = library["get_emoticon"][emoticon]
  # if it exists, return the japanese emoticon
  if japanese_emoticon
    japanese_emoticon
    #otherwise, return apology message
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file, emoticon)
  # code goes here
  library = load_library(file)
  # sets english_meaning to correct meaning of japanese_emoticon
  english_meaning = library["get_meaning"][emoticon]
  if english_meaning
    english_meaning
  else
    "Sorry, that emoticon was not found"
  end
end
