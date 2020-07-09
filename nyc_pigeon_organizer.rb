require 'pry'

def nyc_pigeon_organizer(data)
  final_results = data.each_with_object({}) do |(key, value), final_array |
    value.each do |last_key, names|
      names.each do |name|
        if !final_array[name]
          final_array[name] = {}
        end
        if !final_array[name][key]
          final_array[name][key] = []
        end
        final_array[name][key].push(last_key.to_s)
        #binding.pry
      end
    end
  end
  #binding.pry
end
