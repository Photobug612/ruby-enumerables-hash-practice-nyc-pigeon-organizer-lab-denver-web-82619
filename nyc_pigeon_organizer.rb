def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  data.each do |descriptor, hash|
    hash.each do |quality, array|
      array.each do |name|
        if !pigeon_hash.has_key?(name)
          new_hash[name] = {}
        end

        if !pigeon_hash[name].has_key?(descriptor)
          pigeon_hash[name][descriptor] = []
        end

        if !pigeon_hash[name][descriptor].include?(quality)
          pigeon_hash[name][descriptor] << quality.to_s
        end
      end
    end
  end
  pigeon_hash
end