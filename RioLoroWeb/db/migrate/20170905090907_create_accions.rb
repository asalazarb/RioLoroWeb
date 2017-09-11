class CreateAccions < ActiveRecord::Migration[5.1]
  def change
    create_table :accions do |t|
      t.string :accion

      t.timestamps
    end
  end
end
