class CreateAccomplishments < ActiveRecord::Migration[5.0]
  def change
    create_table :accomplishments do |t|
      t.belongs_to :work_detail, foreign_key: true
      t.decimal :quantity
      t.datetime :date
      t.string :remarks

      t.timestamps
    end
  end
end
