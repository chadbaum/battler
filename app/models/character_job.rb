# frozen_string_literal: true
class CharacterJob < ActiveRecord::Base
  belongs_to :character
  belongs_to :job
end
