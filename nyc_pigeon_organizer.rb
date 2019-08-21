def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  data.each do |discriptor, hash|
    hash.each do |quakity, array|
      array.each do |name|
        if !pigeon_hash.has_key?(name)
          new_hash[name] = {}
        end

        if !pigeon_hash[name].has_key?(property)
          pigeon_hash[name][discriptor] = []
        end

        if !pigeon_hash[name][property].include?(attribute)
          pi[name][discriptor] << attribute.to_s
        end
      end
    end
  end
  pigeon_hash
end