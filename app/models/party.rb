# frozen_string_literal: true
# Party
class Party < ActiveRecord::Base
  has_many :characters
end
