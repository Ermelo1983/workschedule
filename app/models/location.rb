class Location < ApplicationRecord
  has_many :units
  has_many :employees, :through => :units
  has_many :shift_types


  def full_address
    ([street, house_number] - ['']).compact.join(' ')
  end
end
