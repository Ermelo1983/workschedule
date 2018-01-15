class Location < ApplicationRecord
  has_many :units
  has_many :employees, :through => :units

  def full_address
    ([street, house_number] - ['']).compact.join(' ')
  end
end
