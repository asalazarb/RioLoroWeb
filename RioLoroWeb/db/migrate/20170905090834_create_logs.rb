class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.DateTime :fecha
      t.DateTime :hora
      t.String :accion

      t.has_one :usuario
      t.has_one :accion
      t.timestamps
    end
  end
end
