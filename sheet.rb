# Inputs for stats
# Classes

 @attributes = []

def get_attributes
  stats = ["Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma"]
  stats.each do |attribute|
  puts "Please enter a #{attribute} value: "
  input = gets.chomp
  @attributes << { attribute.to_sym => input }
  end
  puts @attributes
end

def classes
end

def inventory
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