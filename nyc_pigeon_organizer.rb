def nyc_pigeon_organizer(data)
  # write your code here!
  results = data.each_with_object({}) do |(key, value), array|
    value.each do |inside_key, names|
      names.each do |name|
        if !array[name]
          array[name] = {}
        end
        if !array[name][key]
          !array[name][key] = []
        end
        array[name][key].push(inside_key.to_s)
      end
    end
  end
end
