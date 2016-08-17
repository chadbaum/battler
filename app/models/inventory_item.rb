# frozen_string_literal: true
# Inventory Item
class InventoryItem < ApplicationRecord
  belongs_to :item
  belongs_to :character
end
