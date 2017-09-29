class AddUsosCaracteristicasEspecie < ActiveRecord::Migration[5.1]
  def change

    #add_column :especies, :usos, :string
    #add_column :especies, :caracteristicas, :string
    remove_column :especies, :taxomomia
  end
end
