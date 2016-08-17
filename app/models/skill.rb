# frozen_string_literal: true
# Skill
class Skill < ActiveRecord::Base
  belongs_to :job
end
