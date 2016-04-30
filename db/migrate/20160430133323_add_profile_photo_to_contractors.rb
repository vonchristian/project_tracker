class AddProfilePhotoToContractors < ActiveRecord::Migration[5.0]
  def up
   add_attachment :contractors, :photo
 end

 def down
   remove_attachment :contractors, :photo
 end
end
