class CreateFamilia < ActiveRecord::Migration[5.1]
  def change
    create_table :familia do |t|
      t.string :nombreFamilia

      t.timestamps
    end
  end
end
