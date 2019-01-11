require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  pigeon_names = data.collect do |attributes, details|
    details.values
  end 
  
  pigeon_names = pigeon_names.flatten.uniq
  
  # First I create an array, pigeon_names, that contains all of the pigeon_names from data. I use .flatten.uniq to first form a single array, then remove any duplicate elements. The array now contains 1 of each name 
  
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
        pigeon_list[name][attributes]
  
  
  binding.pry 
end