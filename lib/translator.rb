require 'yaml'

def load_library(file_path)
  emoticons_data = YAML.load_file(file_path)

  emoticons = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }

  emoticons_data.each do |meaning, emoticon|
    emoticons["get_meaning"][emoticon[1]]=meaning
    emoticons["get_emoticon"][emoticon[0]]=emoticon[1]
  end

  return emoticons
end

def get_japanese_emoticon(file_path, emoticon)

  return load_library(file_path)["get_meaning"][emoticon]
  
end

# def get_english_meaning(file_path, emoticon)
#     return load_library(file_path)["get_meaning"]
# end
