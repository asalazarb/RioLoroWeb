class AddUserToUploads < ActiveRecord::Migration[5.1]
  def change
    add_reference :especie_images, :especie, foreign_key: true
  end
end
