require 'pry'

def nyc_pigeon_organizer(data)

  #this block of code returns an organized_hash of all the pigeon names as keys
  #pointing to empty Color, Gender, and Lives arrays
  organized_hash = {}
  data.each do |category,values|
    values.each do |value,names|
      names.each do |name|
        if !organized_hash.include?(name)
          organized_hash[name] = {:color => [],
                                  :gender => [],
                                  :lives =>[] }
        end
      end
    end
  end

  #this gets you to the level of color, gender, lives
  organized_hash.each do |pigeon, attributes|
    attributes.each do |attribute,specifications|
      #empty space
      data.each do |category,values|
        values.each do |value,names|
          names.each do |name|
            if name == pigeon && category == attribute
                organized_hash[pigeon][attribute] << value.to_s
            end
          end
        end
      end

    end
  end

organized_hash
end

#for each element in the top-level, if there is another layer of nesting, call that layer of nesting.
#Otherwise, turn that string into a category
