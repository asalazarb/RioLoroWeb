class AddFKtoDivisions < ActiveRecord::Migration[5.1]
  def change
    add_column :ordens, :clase_id, :bigint
    add_column :clases, :reino_id, :bigint
    add_foreign_key :ordens, :clases
    add_foreign_key :clases, :reinos
  end
end
