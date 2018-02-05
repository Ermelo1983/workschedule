class CreateShiftTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :shift_types do |t|
      t.string :name
      t.string :description
      t.string :start_time
      t.string :end_time
      t.integer :quantity_per_day
      t.boolean :for_location
      t.boolean :for_unit

      t.timestamps
    end
  end
end
