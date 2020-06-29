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
  # write your code here!
  first_layer=""
  second_layer=""
  third_layer=""
  hash_starting_names={}
  data.each do |k,v|
    # puts k
    first_layer=k
    # puts first_layer
    # puts "This is the values #{v}"
    v.each do |ko,names|
      # puts ko
      second_layer=ko.to_s
      # puts "This is 2nd layer #{names}"
        names.each do |nom|
          #nom is names of the pigeons. Here I use nom to create the pigeon
          # puts ":#{nom}"
          hash_starting_names[nom]={first_layer=>[second_layer]} if hash_starting_names[nom]==nil
          # puts first_layer
          hash_starting_names[nom][first_layer]=[second_layer] if hash_starting_names[nom][first_layer]==nil
          hash_starting_names[nom][first_layer]<<second_layer if !hash_starting_names[nom][first_layer].include?second_layer
          #Here we create the pigeon and the color
          #color, gender, and lives are the items of the first layer
        end
        #The prior lupe finished creating the pigeon and the color category
    end
  end
  #creating hash from scratch from here
  # hash_starting_names.each do |name,placeholder|
  #    hash_starting_names[name]={first_layer=>placeholder}
  #  end
  #This is the output area
  hash_starting_names
end

x =nyc_pigeon_organizer(pigeon_data)
p x
