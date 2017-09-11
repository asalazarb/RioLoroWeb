class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.date :date
      t.datetime :timestamp
      t.string :accion


      t.timestamps
    end
  end
end
