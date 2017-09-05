class CreateInventarios < ActiveRecord::Migration[5.1]
  def change
    create_table :inventarios do |t|
      t.string :nombre
      t.string :ubicacion

      t.timestamps
    end
  end
end
