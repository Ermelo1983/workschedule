class AddShiftTypeToShift < ActiveRecord::Migration[5.1]
  def change
    add_reference :shifts, :shift_type, index: true
    add_reference :shift_types, :location, index: true
  end
end
