class Especie < ApplicationRecord
  belongs_to :reino, foreign_key: "reino_id"
  belongs_to :orden, foreign_key: "orden_id"
  belongs_to :familium, foreign_key: "familium_id"
  belongs_to :clase, foreign_key: "clase_id"

end
