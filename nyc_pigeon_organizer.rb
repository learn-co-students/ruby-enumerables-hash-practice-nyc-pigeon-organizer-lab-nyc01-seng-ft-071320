
def nyc_pigeon_organizer(data)
  pigeon_list = {}

   data.each do |attribute, detail|
    detail.each do |key, name|
      name.each do |pigeon_name|
        if !pigeon_list[pigeon_name]
            pigeon_list[pigeon_name] = {}
        end
        if !pigeon_list[pigeon_name][attribute]
           !pigeon_list[pigeon_name][attribute] = []
        end
        pigeon_list[pigeon_name][attribute].push(key.to_s)
      end
    end
  end
pigeon_list
end
