module DashboardsHelper

  def head_slot
    @character.head ? @character.head.item.name : "Empty"
  end

  def chest_slot
    @character.chest ? @character.chest.item.name : "Empty"
  end

  def feet_slot
    @character.feet ? @character.feet.item.name : "Empty"
  end

  def accessory1_slot
    @character.accessories[0] ? @character.accessories[0].item.name : "Empty"
  end

  def accessory2_slot
    @character.accessories[1] ? @character.accessories[1].item.name : "Empty"
  end

  def right_slot
    @character.right ? @character.right.item.name : "Empty"
  end

  def left_slot
    @character.left ? @character.left.item.name : "Empty"
  end

end
