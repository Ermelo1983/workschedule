class Location < ApplicationRecord
  # has_many :units

  def full_address
    ([street, house_number] - ['']).compact.join(' ')
  end
end
