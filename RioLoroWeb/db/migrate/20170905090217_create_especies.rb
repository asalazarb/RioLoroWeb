class CreateEspecies < ActiveRecord::Migration[5.1]
  def change
    create_table :especies do |t|
      t.string :nombreComun
      t.string :nombreCientifico
      t.string :imagen
      t.string :taxomomia
      t.bool :estaEnPeligro

      t.timestamps
    end
  end
end
