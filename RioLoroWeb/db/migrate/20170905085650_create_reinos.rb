class CreateReinos < ActiveRecord::Migration[5.1]
  def change
    create_table :reinos do |t|
      t.string :nombreReino

      t.timestamps
    end
  end
end
