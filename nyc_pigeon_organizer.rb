def nyc_pigeon_organizer(data)
  sorted_pigeon_hash = {}
  data.each do |info, hash|
    hash.each do |descriptor, array|
      array.each do |name|
        if sorted_pigeon_hash.has_key?(name)
          sorted_pigeon_hash[name] = {}
        end
        if !sorted_pigeon_hash[name].has_key?(info)
          sorted_pigeon_hash[name][info] = []
        end
        if !sorted_pigeon_hash[name][info].include?(descriptor)
          sorted_pigeon_hash[name][info] << descriptor.to_s 
        end
      end
    end
  end  
     sorted_pigeon_hash
end
