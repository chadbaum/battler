require_relative "../equipment.rb"

class Weapon < Equipment
end

class Sword < Weapon
  @type = "Sword"
end

class Shortsword < Sword
  @power = 3

class Knife < Weapon
  @type = "Knife"
end

class RustyKnife < Knife
  @power = 1
end
