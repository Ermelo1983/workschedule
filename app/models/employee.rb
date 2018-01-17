class Employee < ApplicationRecord
  belongs_to :unit

  def full_name
    ([first_name, last_name] - ['']).compact.join(' ')
  end

  def full_address
    ([street, house_number] - ['']).compact.join(' ')
  end
end
