# require modules here
require "yaml"

def load_library(file)
  # code goes here
  dictionary = {"get_meaning" => {}, "get_emoticon" => {}}
  emoticons = YAML.load_file(file)
  emoticons.each do |word, arr|
  end
    
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
