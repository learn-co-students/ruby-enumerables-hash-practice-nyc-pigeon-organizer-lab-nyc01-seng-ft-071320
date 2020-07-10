require 'pry'

def attribute_of_the_pigeon(data, attribute, pigeon)
  attribute_list = []
  
  data[attribute].each { |attribute_key, names|
    
    names.each { |name| 
      if name == pigeon
        attribute_list << attribute_key.to_s
      end
    }
    
  }
  attribute_list
end


def attribute(data, pigeon)
  attribute_lists = {}
  
  data.each_key { |attribute|
    attribute_lists[attribute] = attribute_of_the_pigeon(data, attribute, pigeon)
  }
  
  attribute_lists
end

def nyc_pigeon_organizer(data)
  new_list = {}
  
  data[:gender].each_value { |names| 
    names.each { |name|
      new_list[name] = attribute(data, name)
    }
  }
  
  new_list
end



binding.pry