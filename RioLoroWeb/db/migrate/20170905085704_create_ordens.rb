class CreateOrdens < ActiveRecord::Migration[5.1]
  def change
    create_table :ordens do |t|
      t.string :nombreOrden
      t.belongs_to :clase

      t.timestamps
    end
  end
end
