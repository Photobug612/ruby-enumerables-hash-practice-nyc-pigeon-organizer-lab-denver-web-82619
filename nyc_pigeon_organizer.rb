def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  data.each do |q, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !pigeon_hash.has_key?(name)
          pigeon_hash[name] = {}
        end

        if !pigeon_hash[name].has_key?(q)
          pigeon_hash[name][q] = []
        end

        if !pigeon_hash[name][q].include?(attribute)
          pigeon_hash[name][q] << attribute.to_s
        end
      end
    end
  end
  pigeon_hash
end
