# frozen_string_literal: true
# Item
class Item < ActiveRecord::Base
  has_many :character_items
  has_many :characters, through: :character_items
end
