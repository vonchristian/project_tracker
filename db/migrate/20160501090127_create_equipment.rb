class CreateEquipment < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment do |t|
      t.string :plate_number
      t.string :make_and_model
      t.decimal :acquisition_cost
      t.datetime :acquisition_date
      t.integer :status

      t.timestamps
    end
  end
end
