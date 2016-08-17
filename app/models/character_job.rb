# frozen_string_literal: true
# Character Job
class CharacterJob < ActiveRecord::Base
  belongs_to :character
  belongs_to :job
end
