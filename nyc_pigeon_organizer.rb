require 'pry'

def nyc_pigeon_organizer(data)
 new_hash = {}
 data.each do |key, value|
    value.each do |inner_key_1, inner_value_1|
      inner_value_1.each do |index|
        if !new_hash[index]
          new_hash[index] = {}
        end
          if !new_hash[index][key]
            new_hash[index][key] = []
            #creates the hash inside the hash
          end
            new_hash[index][key] << inner_key_1.to_s
            #creates what does in the variable
      end
    end
  end
  new_hash
end
