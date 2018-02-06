class Shift < ApplicationRecord
  has_many :shift_types
  belongs_to :employee
  end
