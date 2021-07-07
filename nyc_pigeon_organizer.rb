require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  hash = {}
  data.each do |key, value|
    value.each do |inner_key, inner_value|
      inner_value.each do |name|
        if(hash[name] == nil)
          hash[name] = {}
        end
        if(hash[name][key] == nil)
          hash[name][key] = []
        end
        hash[name][key] << inner_key.to_s 
      end
    end
  end
  hash
end
