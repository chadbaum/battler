# frozen_string_literal: true
class CharacterItem < ActiveRecord::Base
  belongs_to :character
  belongs_to :item
end
