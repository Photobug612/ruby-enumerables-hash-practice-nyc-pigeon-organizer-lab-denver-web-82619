def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  data.each do |quality, hash|
    hash.each do |char, array|
      array.each do |name|
        if !pigeon_hash.has_key?(name)
          pigeon_hash[name] = {}
        end

        if !pigeon_hash[name].has_key?(quality)
          pigeon_hash[name][quality] = []
        

        if !pigeon_hash[name][quality].include?(char)
          pigeon_hash[name][quality] << char.to_s
        end
      end
    end
  end
  new_hash
end


def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |property, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end

        if !new_hash[name].has_key?(property)
          new_hash[name][property] = []
        end

        if !new_hash[name][property].include?(attribute)
          new_hash[name][property] << attribute.to_s
        end
      end
    end
  end
  new_hash
end