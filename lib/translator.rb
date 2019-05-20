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

def get_japanese_emoticon(path, emoticon)
  translator = load_library(path)
  if translator["get_emoticon"].has_key?(emoticon)
    return translator["get_emoticon"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  translator = load_library(path)
  if translator["get_meaning"].has_key?(emoticon)
    return translator["get_meaning"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end
