require_relative "lib/characters.rb"

class Enemy < NPC

  def initialize(name, gender, level, humanoid=true, type=nil, element=nil, boss=false)
    @name = name.capitalize
    @gender = gender
    @level = level
    @humanoid = humanoid
    @type = type
    @boss = boss
    @element = element
    @equipment = NPC_EMPTY_SET
  end

end

class Undead < Enemy
  @type = "Undead"
  @gender = ""
  @element = {
    "Fire" => 200,
    "Earth" => 100,
    "Air" => 100,
    "Water" => 100
    }
  @drain = -200
  @cure = -200
end

class Vampire < Undead
  @name = "Vampire"
  @level = 20
  @boss = false
end

class Zombie < Undead
  def initialize
    @name = "Zombie"
    @level = 5
    @boss = false
    @hp = 100
  end
end
