# frozen_string_literal: true
module DashboardsHelper
  def equipped(slot)
    case slot
    when 'head'
      @character.head ? @character.head.item.name : 'Empty'
    when 'chest'
      @character.chest ? @character.chest.item.name : 'Empty'
    when 'feet'
      @character.feet ? @character.feet.item.name : 'Empty'
    when 'accessory1'
      @character.accessories[0] ? @character.accessories[0].item.name : 'Empty'
    when 'accessory2'
      @character.accessories[1] ? @character.accessories[1].item.name : 'Empty'
    when 'right'
      @character.right ? @character.right.item.name : 'Empty'
    when 'left'
      @character.left ? @character.left.item.name : 'Empty'
    end
  end
end
