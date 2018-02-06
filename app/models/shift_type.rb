class ShiftType < ApplicationRecord
  belongs_to :shift, optional: true
  belongs_to :location

  validate :location_xor_unit

  def location_xor_unit
    unless self.per_location.present? ^ self.per_unit.present?
      errors.add :per_location, :location_xor_unit
      errors.add :per_unit, :location_xor_unit
    end
  end
end
