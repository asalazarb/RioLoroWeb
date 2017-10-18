class AddAttachmentImageToEspecieImages < ActiveRecord::Migration[5.1]
  def self.up
    change_table :especie_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :especie_images, :image
  end
end
