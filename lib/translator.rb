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
  data_hash = load_library(file_path)
  if data_hash["get_emoticon"][emoticon]
    return data_hash["get_emoticon"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning
  data_hash = load_library(file_path)
  if data_hash["get_meaning"][emoticon]
    return data_hash[get_meaning][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end
