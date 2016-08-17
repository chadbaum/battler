# frozen_string_literal: true
# Application
module ApplicationHelper
  def active_job_portrait(character)
      "/assets/portraits/#{character.active_job.job.alias.upcase}.gif"
  end

  def job_icon(character)
    "/assets/icons/#{character.active_job.job.alias.upcase}.png"
  end

  def current_character
    current_user.character
  end

  def equipment_name(slot)
    result = @character.inventory_items.find_by(equipped: true, slot: slot)
    result ? result.item.name : 'Empty'
  end
end
