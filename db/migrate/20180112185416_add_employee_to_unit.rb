class AddEmployeeToUnit < ActiveRecord::Migration[5.1]
  def change
    add_reference :employees, :unit, index: true

  end
end
