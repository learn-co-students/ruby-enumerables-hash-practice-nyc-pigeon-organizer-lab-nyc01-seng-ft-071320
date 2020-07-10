require 'pry'

def nyc_pigeon_organizer(data)
  new_list = {}
  
  data.each { |key, value| 
    
    value.each { |inner_key, names|
    
      names.each { |name|
      
        if !new_list[name]
          new_list[name] = {}
        end
        
        if !new_list[name][key]
          new_list[name][key] = []
        end
        
        new_list[name][key] << inner_key.to_s
      }        
    }
  }
  
  new_list
end








# def attribute_of_the_pigeon(data, attribute, pigeon)
#   attribute_list = []
  
#   data[attribute].each { |attribute_key, names|
    
#     names.each { |name| 
#       if name == pigeon
#         attribute_list << attribute_key.to_s
#       end
#     }
    
#   }
#   attribute_list
# end


# def attribute(data, pigeon)
#   attribute_lists = {}
  
#   data.each_key { |attribute|
#     attribute_lists[attribute] = attribute_of_the_pigeon(data, attribute, pigeon)
#   }
  
#   attribute_lists
# end

# def nyc_pigeon_organizer(data)
#   new_list = {}
  
#   data[:gender].each_value { |names| 
#     names.each { |name|
#       new_list[name] = attribute(data, name)
#     }
#   }
  
#   new_list
# end



binding.pry