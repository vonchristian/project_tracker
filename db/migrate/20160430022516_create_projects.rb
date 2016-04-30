class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :number
      t.decimal :contract_amount
      t.string :implementing_office
      t.integer :status

      t.timestamps
    end
  end
end
