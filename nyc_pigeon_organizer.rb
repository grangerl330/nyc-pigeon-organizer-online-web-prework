def nyc_pigeon_organizer(data)
  pigeon_list = {}
  pigeon_names = data.collect do |attributes, details|
    details.values
  end 
  
  pigeon_names = pigeon_names.flatten.uniq
  
  # First we create an array, pigeon_names, that contains all of the pigeon_names from data. We use .flatten.uniq to first form a single array, then remove any duplicate elements. The array now contains 1 of each name 
  
  pigeon_names.each do |name|
    pigeon_list[name] = {}
  end 
  
  #This creates keys in the pigeon_list hash that are each of the names from the pigeon_names array 
  
  data.each do |attributes, detais|
    pigeon_list.each do |name, hash|
      pigeon_list[name][attributes] = []
    end
  end
  
  #Iterates through data yielding attributes and details, then iterates through the pigeon_list we created, yielding names and the empty hashes, then adds attributes as a key with values of an empty array within each name key that 
  
  data.each do |attributes, details|
    details.each do |property, names|
      names.each do |name|
        pigeon_list[name][attributes] << property.to_s 
      end 
    end
  end 
  
  pigeon_list

#iterates through data, yielding attributes and details, then iterates through those details, yielding the property and the names within. Then iterates through each of the names, yielding each individual name. Now that we have access to all of the data necessary from each iteration, we add the properies to the arrays that are the values of the attribute keys in pigeon_list. We access those arrays with pigeon_list[name][attributes] then shovel, <<, each property into the arrays. We need to convert to strings with .to_s because each property is a key.
end