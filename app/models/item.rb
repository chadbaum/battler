class Item < ActiveRecord::Base
  has_many :characters, through: :character_items
  has_many :characters
end
