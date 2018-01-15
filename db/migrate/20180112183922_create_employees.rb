class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :house_number
      t.string :zip_or_postal_code
      t.string :city
      t.date :birth_date
      t.string :bank_account
      t.string :payscale
      t.string :persons_number
      t.integer :contract_hours

      t.timestamps
    end
  end
end
