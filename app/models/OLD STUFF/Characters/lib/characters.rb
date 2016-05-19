require_relative "../../Equipment/equipment.rb"
require_relative "../../classes.rb"

class Character
  attr_accessor :name, :char_level, :inventory, :humanoid, :equipment, :gender

  def is_critical?
    @current_hp <= 0.2 * @stats["HP"] ? true : false
  end

  def is_dead?
    @current_hp <= 0 ? true : false
  end

end

class NPC < Character
  attr_accessor :type
  def initialize(name, gender, level, humanoid=true, type=nil)
    @name = name.capitalize
    @gender = gender.capitalize
    @level = level
    @humanoid = humanoid
    @type = type
    @equipment = NPC_EMPTY_SET
  end
end
