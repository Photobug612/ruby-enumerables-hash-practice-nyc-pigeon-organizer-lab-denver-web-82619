def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  data.each do |property, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !pigeon_hash.has_key?(name)
          new_hash[name] = {}
        end

        if !pigeon_hash[name].has_key?(property)
          pigeon_hash[name][property] = []
        end

        if !pigeon_hash[name][property].include?(attribute)
          pi[name][property] << attribute.to_s
        end
      end
    end
  end
  new_hash
end