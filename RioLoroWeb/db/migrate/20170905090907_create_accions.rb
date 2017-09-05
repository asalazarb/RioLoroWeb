class CreateAccions < ActiveRecord::Migration[5.1]
  def change
    create_table :accions do |t|
      t.String :accion

      t.timestamps
    end
  end
end
