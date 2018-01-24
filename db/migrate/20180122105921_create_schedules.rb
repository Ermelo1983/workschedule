class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.string :month
      t.datetime :date

      t.timestamps
    end
  end
end
