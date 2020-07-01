require "pry"

def nyc_pigeon_organizer(data)
  new_dict = {}
  data.each do |key1, hash|
    hash.each do |key2, value|
      value.each do |names|
        if !new_dict.has_key?(names)
          new_dict[names] = {}
        end
        if !new_dict[names].has_key?(key1)
          new_dict[names][key1] = []
        end
        if !new_dict[names][key1].include?(key2)
          new_dict[names][key1].push(key2.to_s)
        end
      end
    end
  end
  return new_dict
end
