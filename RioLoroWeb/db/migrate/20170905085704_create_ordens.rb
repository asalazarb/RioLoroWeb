class CreateOrdens < ActiveRecord::Migration[5.1]
  def change
    create_table :ordens do |t|
      t.string :nombreOrden

      t.timestamps
    end
  end
end
