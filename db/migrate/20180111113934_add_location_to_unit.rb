class AddLocationToUnit < ActiveRecord::Migration[5.1]
  def change
    add_reference :units, :location, index: true
  end
end
