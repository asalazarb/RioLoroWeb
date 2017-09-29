class CreateEspecieImages < ActiveRecord::Migration[5.1]
  def change
    create_table :especie_images do |t|

      t.timestamps
    end
  end
end
