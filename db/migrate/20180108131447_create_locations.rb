class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :street
      t.string :house_number
      t.string :zip_or_postal_code
      t.string :city

      t.timestamps
    end
  end
end
