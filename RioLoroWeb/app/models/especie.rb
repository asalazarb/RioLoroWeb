class Especie < ApplicationRecord
  

  belongs_to :familium, foreign_key: "familium_id"


end
