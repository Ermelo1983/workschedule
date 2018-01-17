class Employee < ApplicationRecord
  belongs_to :unit

  def full_name
    ([first_name, last_name] - ['']).compact.join(' ')
  end
end
