# frozen_string_literal: true
# Enrolled Job
class EnrolledJob < ApplicationRecord
  belongs_to :job
  belongs_to :character
end
