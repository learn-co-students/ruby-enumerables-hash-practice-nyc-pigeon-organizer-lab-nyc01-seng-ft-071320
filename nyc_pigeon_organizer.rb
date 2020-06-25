require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
 data.each_with_object({}) do |(k,v), final_hash|
   v.each do |key, value|
     value.each do |name|
       if(final_hash[name] == nil)
         final_hash[name] = {}
       end
       if(final_hash[name][k] == nil)
         final_hash[name][k] = []
       end
     final_hash[name][k] << key.to_s  
     end
   end
   final_hash
 end
end
