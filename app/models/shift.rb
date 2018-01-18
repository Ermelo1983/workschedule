class Shift < ApplicationRecord
  validate :location_xor_unit

  def location_xor_unit
    unless self.for_location.present? ^ self.for_unit.present?
      errors.add :for_location, :location_xor_unit
      errors.add :for_unit, :location_xor_unit
    end
  end
end
