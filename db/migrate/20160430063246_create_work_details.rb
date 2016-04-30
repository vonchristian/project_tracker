class CreateWorkDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :work_details do |t|
      t.belongs_to :project, foreign_key: true
      t.string :code
      t.string :description
      t.decimal :quantity
      t.string :unit
      t.string :unit_cost
      t.integer :status

      t.timestamps
    end
  end
end
