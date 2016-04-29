class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.decimal :quantity, precision: 9, scale: 2
      t.belongs_to :inventory, foreign_key: true
      t.decimal :unit_price,  precision: 9, scale: 2

      t.timestamps
    end
  end
end
