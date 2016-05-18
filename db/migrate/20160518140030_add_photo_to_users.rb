class AddPhotoToUsers < ActiveRecord::Migration[5.0]
  def up
    add_attachment :users, :photo
  end

  def down
    remove_attachment :users, :photo
  end
end
