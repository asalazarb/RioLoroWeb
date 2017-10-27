class AddColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :nombre, :string
    add_column :users, :apellido1, :string
    add_column :users, :apellido2, :string
    add_column :users, :cedula, :string
    add_column :users, :nombreUsuario, :string
  end
end
