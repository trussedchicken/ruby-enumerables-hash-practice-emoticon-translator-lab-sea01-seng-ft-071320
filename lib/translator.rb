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
end


def get_english_meaning(file_path, emoticon)
  data = load_library(file_path)
  result = data.each_with_object({}) do |(key,value), final_meaning|
    
  end 
end

def get_japanese_emoticon

end

