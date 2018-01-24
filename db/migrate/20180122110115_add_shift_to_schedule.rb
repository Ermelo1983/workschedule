class AddShiftToSchedule < ActiveRecord::Migration[5.1]
  def change
    add_reference :schedules, :shift, index: true
  end
end
