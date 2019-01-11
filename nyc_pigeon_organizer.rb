def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  pigeon_names = data.collect do |attributes, details|
    details.values
  end 
  
  pigeon_names = pigeon_names.flatten.uniq
  
  pigeon_names.each do |name|
    pigeon_list[name] = {}
  end 
  
  data.each do |attributes, detais|
    pigeon_list.each do |name, hash|
      pigeon_list[name][attributes] = []
    end
  end

  data.each do |attributes, details|
    details.each do |property, names|
      names.each do |name|
        pigeon_list[name][attributes] << property.to_s 
      end 
    end
  end 

  pigeon_list

end