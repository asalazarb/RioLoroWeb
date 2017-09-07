class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido1
      t.string :apellido2
      t.string :cedula
      t.string :nombreUsuario
      t.string :password

      t.has_one :tipo_usuario
      t.timestamps
    end
  end
end
