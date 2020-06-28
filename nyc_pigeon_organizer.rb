
def nyc_pigeon_organizer(data)
  # write your code here!
  # establish new hash to populate
  result_hash = {}
  # iterate through top level keys of input hash
  data.each do |key1,value1|
    # check if the value is a hash or an array
    value1.each do |key2,value2|
      #iterate through the array
      value2.each do |element|
        #check if the element exists as a key in the result object
        if result_hash.key?(element) == false
          #if no add it as a key with value of hash
          result_hash[element] = {}
          #create new key and set to empty array
          result_hash[element][key1] = []
          #push the current appropriate value into that array
          result_hash[element][key1].push(key2.to_s)
        #if it does exist
        else
          # check if necessary key is present
          if result_hash[element].key?(key1) == false
            #create new key and set to empty array
            result_hash[element][key1] = []
            #push the current appropriate value into that array
            result_hash[element][key1].push(key2.to_s)
          else
            #add properties to it based on the keys it fell under (convert data type as necesary)
            result_hash[element][key1].push(key2.to_s)
          end
        end
      end
    end
  end
  #return the new hash
  result_hash
end
