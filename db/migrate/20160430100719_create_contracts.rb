class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.belongs_to :project, foreign_key: true
      t.belongs_to :contractor, foreign_key: true

      t.timestamps
    end
  end
end
