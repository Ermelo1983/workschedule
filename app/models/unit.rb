class Unit < ApplicationRecord
  belongs_to :location
  has_many :employees
end
