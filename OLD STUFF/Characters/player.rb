require_relative "lib/characters.rb"
require_relative "../constants.rb"

class Player < Character

  attr_accessor :class, :xp, :gc

  def initialize(name, gender)
    @name = name.capitalize
    @gender = gender.capitalize
    @char_level = 1
    @char_xp = 0
    @active_class = "Squire"
    @class_xp = PC_STARTER_CLASS_XP
    @class_levels = PC_STARTER_CLASS_LEVELS
    @stats = PC_STARTER_STATS
    @equipment = PC_STARTER_SET
    @gc = 1000
    @current_hp = @stats["HP"]
  end

  def list_classes
    @class_levels.each do |char_class, class_level|
      puts "#{char_class}:  #{class_level}" if class_level > 0
    end
  end

  def list_equipment
    @equipment.each do |slot, item|
      puts "#{slot}:           #{item}"
    end
  end

  def char_level_up
    @char_level += 1
    @char_xp = 0
    "Lvl #{@char_level}"
  end

  def class_level_up
    @class_levels[@active_class] += 1
    @class_xp[@active_class] = 0
    "Lvl #{@class_levels[@active_class]} #{@active_class}"
  end

  def attack(enemy)
    damage = rand(5)
    puts "#{@name} attacks #{enemy.name} with his #{@equipment["Right"]} for #{damage} damage!"
  end

end
