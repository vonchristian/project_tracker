class CreateInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :inventories do |t|
      t.string :description
      t.string :unit

      t.timestamps
    end
  end
end
