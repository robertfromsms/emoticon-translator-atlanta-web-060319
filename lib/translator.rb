# require modules here

def load_library(path)
  require "yaml"

  just_loaded_translator = YAML.load(File.read("#{path}"))
  translator = {"get_emoticon" => {}, "get_meaning" => {}}
  just_loaded_translator.each {|emotion, icon|
    translator["get_meaning"][icon[1]] = emotion
    translator["get_emoticon"][icon[0]] = icon[1]
  }
  return translator
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
