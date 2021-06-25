# Inputs for stats
# Classes

 @attributes = []
 @inventory = []

def get_attributes
  stats = ["Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma"]
  stats.each do |attribute|
  puts "Please enter a #{attribute} value: "
  input = gets.chomp
  @attributes << { attribute.to_sym => input }
  end
end

def list_attributes
  puts @attributes
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

def spell_slots
end

def hp
end

def level_up
  # when to get abiilty increasers ect
end

def dice_roll
end

def character_info
end

def init
end

def ac
end

def speed
end

def feats
end

get_attributes