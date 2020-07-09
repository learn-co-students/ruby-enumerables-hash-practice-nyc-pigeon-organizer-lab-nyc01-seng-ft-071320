require'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  results=data.each_with_object({}) do |(key,value), new_array|
  #binding.pry
value.each do |inner_key,names|
  names.each do |n|
    if !new_array[n]
      new_array[n]={}
    end
    if !new_array[n][key]
      !new_array[n][key]=[]
    end
    new_array[n][key].push(inner_key.to_s)
  end
  #binding.pry
end
end
end