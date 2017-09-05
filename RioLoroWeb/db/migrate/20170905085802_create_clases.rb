class CreateClases < ActiveRecord::Migration[5.1]
  def change
    create_table :clases do |t|
      t.string :nombreClase

      t.timestamps
    end
  end
end
