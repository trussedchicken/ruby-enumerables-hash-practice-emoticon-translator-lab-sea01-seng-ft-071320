require 'pry'
require "yaml"

def load_library(file_path)
    data = YAML.load_file(file_path)
    result = data.each_with_object({}) do |(key,value), final_hash|
      final_hash[key] = {
        :english => value[0],
        :japanese => value[1]
      }
    end 
    result
end


def get_english_meaning(file_path, emoticon)
  data = load_library(file_path)
  english_meaing = ""
  data.each_with_object({}) do |(key,value)|
    if value[1] == emoticon 
      english_meaing = key
    end
  end 
  english_meaing
end

def get_japanese_emoticon

end

