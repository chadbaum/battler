# frozen_string_literal: true
# Character
class Character < ActiveRecord::Base
  belongs_to :user
  belongs_to :party

  has_many :character_items
  has_many :items, through: :character_items

  has_many :character_jobs
  has_many :jobs, through: :character_jobs

  validates :name, presence: true, length: { in: 4..8 }, uniqueness: true
  validates :gender, presence: true

  def active_character_job
    character_jobs.find_by active: true
  end

  def active_job_portrait
    "/assets/portraits/#{active_character_job.job.alias.upcase}.gif"
  end

  # Increment the job level by 1 and return the new level.
  def active_job_level_up!
    current_active_job = active_character_job
    next_level = active_job_level + 1

    current_active_job.level = next_level
    current_active_job.save
    next_level
  end

  def change_active_job(job_alias)
    old_active_job = active_character_job
    old_active_job.active = false
    old_active_job.save

    job_id = jobs.find_by alias: job_alias
    new_active_job = character_jobs.find_by job_id: job_id
    new_active_job.active = true
    new_active_job.save
  end

  def list_jobs
    jobs = []
    character_jobs.each do |character_job|
      jobs << [character_job.job.name, character_job.level]
    end
    jobs
  end

  def list_inventory
    inventory = []
    character_items.each do |character_item|
      inventory << [character_item.item.name, character_item.quantity]
    end
    inventory
  end

  def list_inventory_types
    item_types = []
    items.each do |item|
      item_types << item.type
    end
    item_types.uniq
  end

  def list_consumables
    consumables = []
    character_items.each do |consumable|
      if consumable.item.type == 'Consumable'
        consumables << [consumable.item.name, consumable.quantity]
      end
    end
    consumables
  end

  def chest
    eq_lookup(chest)
  end

  def head
    eq_lookup(head)
  end

  def feet
    eq_lookup(feet)
  end

  def right
    eq_lookup(right)
  end

  def left
    eq_lookup(left)
  end

  def accessories
    accessories = []
    character_items.where(equipped: true, slot: 'accessory').each do |accessory|
      accessories << accessory
    end
    accessories
  end

  private

  def eq_lookup(slot)
    character_items.find_by(equipped: true, slot: slot)
  end
end
