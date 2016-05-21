require_relative "Characters/player.rb"
require_relative "Characters/enemies.rb"
require_relative "Battle/battle.rb"
require_relative "constants.rb"
require_relative "classes.rb"

player_character = nil

while true
  print "Chaos Compulsion:"
  command = gets.chomp

  case command

  when "list classes"
    player_character.list_classes if player_character != nil
  when "eq"
    player_character.list_equipment if player_character != nil
  when "quit"
    break
  when "create"
    print "Character name?  "
    char_name = gets.chomp
    print "Male/Female?  "
    char_gender = gets.chomp
    player_character = Player.new(char_name, char_gender)
  when "fight"
    battle(player_character,Zombie.new)
  else puts "Command not recognized.  Type help."

  end

end
