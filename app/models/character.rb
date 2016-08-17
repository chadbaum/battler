# frozen_string_literal: true
# Character
class Character < ActiveRecord::Base
  belongs_to :user
  belongs_to :party

  has_many :inventory_items
  has_many :items, through: :inventory_items

  has_many :enrolled_jobs
  has_many :jobs, through: :enrolled_jobs

  validates :name, presence: true, length: { in: 4..8 }, uniqueness: true
  validates :gender, presence: true

  def active_job
    enrolled_jobs.find_by(active: true)
  end

  # Increment the job level by 1 and return the new level.
  def active_job_level_up!
    active_job.update(level: active_job.level += 1)
    active_job.level
  end

  def change_active_job(job_alias)
    new_job_id = jobs.find_by(alias: job_alias)
    new_active_job = enrolled_jobs.find_by(job_id: new_job_id)

    active_job.update(active: false)
    new_active_job.update(active: true)
  end

  def list_jobs
    jobs = []
    enrolled_jobs.each do |enrolled_job|
      jobs << [enrolled_job.job.name, enrolled_job.level]
    end
    jobs
  end

  def list_inventory
    inventory = []
    inventory_items.each do |inventory_item|
      inventory << [inventory_item.item.name, inventory_item.quantity]
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
    character_items.includes(:item).each do |item|
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
