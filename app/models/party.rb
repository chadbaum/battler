# frozen_string_literal: true
class Party < ActiveRecord::Base
  has_many :characters
end
