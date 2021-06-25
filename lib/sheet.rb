# Inputs for stats
# Classes

 @attributes = []
 @inventory = []

def get_attributes
  stats = ["Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma"]
  stats.each do |att|
  puts "Please enter a #{att} value: "
  input = gets.chomp
  @attributes << { att.to_sym => input.to_i }
  end
end

def list_attributes
  puts @attributes
end

def save_attributes
  file = File.open("attributes.csv", "w")
  @attributes.each do |att| 
    att.each do |key, val|
      attribute_data = key, val
      csv_line = attribute_data.join(",")
      file.puts csv_line
    end
  @attributes = [] #Clears so doesn't dupe
  end
  file.close
end

def load_attributes
  file = File.open("attributes.csv", "r")
  file.readlines.each do |line|
    att, stat = line.chomp.split(",")
    @attributes << { att => stat }
  end
  file.close

end
  

def classes
  puts "Please enter a class: "
  player_class = gets.chomp
end

def add_inventory
  puts "Please enter the name of the item: "
  item = gets.chomp
  puts "Please enter a description: "
  description = gets.chomp
  @inventory << { item.to_sym => description }
end

def list_inventory
  puts @inventory
end

def del_inventory
  "Please enter the name of the item to delete: "
  input = gets.chomp
  @inventory.delete_if { |x| x == input }
end



get_attributes
save_attributes
load_attributes
list_attributes



# Attributes work out bonus
# Store atrtibutes
# CRUD