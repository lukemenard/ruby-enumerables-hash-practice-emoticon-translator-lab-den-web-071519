# require modules here
require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  
  library = {}
  library["get_meaning"] = {}
  library["get_emoticon"] = {}
  
  emoticons.each do |english, group|
    library["get_emoticon"][group.first] = group.last
    library["get_meaning"][group.last] = english
  end
  library
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  japanese_emoticon = library["get_emoticon"][emoticon]
end

def get_english_meaning
  # code goes here
end