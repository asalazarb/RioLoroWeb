class AddAttachmentImageToUsuarios < ActiveRecord::Migration[5.1]
  def self.up
    change_table :usuarios do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :usuarios, :image
  end
end
