require_relative "../Characters/lib/characters.rb"

def battle(player, enemy)
  turn_order = [player, enemy]
  turn = turn_order.first

  if turn == player
    print "Attack/Magic/Item/Run?"
    prompt = gets.chomp

    case prompt

    when "attack" || "Attack"
      player.attack(enemy)
    end
  else puts "#{enemy.name} hits you for #{rand(5)} damage!"
  end
end
