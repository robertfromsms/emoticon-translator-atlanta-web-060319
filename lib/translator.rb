# require modules here

def load_library(path)
  require "yaml"

  translator = YAML.load(File.read("#{path}"))
  return translator
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end