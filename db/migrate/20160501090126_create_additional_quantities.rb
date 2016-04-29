class CreateAdditionalQuantities < ActiveRecord::Migration[5.0]
  def change
    create_table :additional_quantities do |t|
      t.belongs_to :work_detail, foreign_key: true
      t.decimal :quantity
      t.datetime :date
      t.string :remarks
      t.decimal :unit_cost
      t.decimal :total_cost

      t.timestamps
    end
  end
end
