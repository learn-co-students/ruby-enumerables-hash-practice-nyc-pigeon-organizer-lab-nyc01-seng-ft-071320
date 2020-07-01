require 'pry'

def nyc_pigeon_organizer(data)
new_pigeon_hash = data.each_with_object({}) do |(key, value), new_pigeon_hash|
    #binding.pry
    value.each do |inner_key, names|
      names.each do |name|
        #binding.pry
        if !new_pigeon_hash[name]
          new_pigeon_hash[name] = {}
      end
      if !new_pigeon_hash[name][key]
        !new_pigeon_hash[name][key] = []
      end
      new_pigeon_hash[name][key].push(inner_key.to_s)
    end
    new_pigeon_hash
  end
  #binding.pry
end
end
