require 'pry'

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, value), final_array|
    value.each do |key2, value2|
      value2.each do |name|
      if !final_array[name]
        final_array[name]= {}
      end
      if !final_array[name][key]
        final_array[name][key] = []
      end
      final_array[name][key] << key2.to_s
    end
  end
end
end