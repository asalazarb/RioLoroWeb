class CreateEspecies < ActiveRecord::Migration[5.1]
  def change
    create_table :especies do |t|
      t.string :nombreComun
      t.string :nombreCientifico
      t.string :imagen
      t.string :taxomomia
      t.bool :estaEnPeligro

      t.belongs_to :reino
      t.belongs_to :orden
      t.belongs_to :familium
      t.belongs_to :clase
      t.timestamps
    end
  end
end
