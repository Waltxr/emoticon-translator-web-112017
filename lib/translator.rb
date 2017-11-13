require 'yaml'

def load_library(file_path)
  emoticons_data = YAML.load_file(file_path)

  emoticons = {
    :get_meaning => {

    }

    :get_emoticon => {

    }
  }

  emoticons_data.each do |meaning, emoticon|
    emoticons[:get_meaning]={emoticon[1]=>meaning}
    # emoticons[:get_emoticon]={emoticon[0]=>emoticon[1]}
  end

  return emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
