class Department < ApplicationRecord

  def full_address
    ([street, house_number] - ['']).compact.join(' ')
  end
end
