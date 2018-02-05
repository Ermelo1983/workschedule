class AddShiftTypeToShift < ActiveRecord::Migration[5.1]
  def change
    add_reference :shifts, :shift_type, index: true
  end
end
