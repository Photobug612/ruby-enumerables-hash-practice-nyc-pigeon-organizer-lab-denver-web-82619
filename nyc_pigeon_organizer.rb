def nyc_pigeon_organizer(data)
  sorted_pigeon_hash = {}
  data.each do |info, hash|
    hash.each do |descriptor, array|
      array.each do |name|
        if sorted_pigeon_hash.include?(name)
          sorted_pigeon_hash[name] = {}
        end
        if !sorted_pigeon_hash[name]include?(info)
          

end
