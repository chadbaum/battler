#EQUIPMENT
PC_STARTER_SET = {
  "Head" => "Leather Helmet",
  "Chest" => "Leather Armor",
  "Feet" => "Leather Boots",
  "Right" => "Rusty Knife",
  "Left" => nil,
  "Accessory1" => nil,
  "Accessory2" => nil
}

NPC_EMPTY_SET = {
  "Head" => nil,
  "Chest" => nil,
  "Feet" => nil,
  "Right" => nil,
  "Left" => nil,
  "Accessory1" => nil,
  "Accessory2" => nil
}
#STATS
PC_STARTER_STATS = {
  "HP" => 100,
  "MP" => 20,
  "STR" => 10,
  "INT" => 10,
  "SPD" => 10,
}

#CLASSES
ALL_CLASSES = [
  "Squire",
  "Knight",
  "White Mage",
  "Black Mage",
  "Rogue"
]

PC_STARTER_CLASS_LEVELS = {"Squire" => 1}
PC_STARTER_CLASS_XP = {}

ALL_CLASSES.each do |char_class| #Squire starts at level 1, rest at 0, and all classes start with 0 job XP.
  PC_STARTER_CLASS_LEVELS[char_class] = 0 unless char_class == "Squire"
  PC_STARTER_CLASS_XP[char_class] = 0
end
