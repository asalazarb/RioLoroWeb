class Clase < ApplicationRecord
  belongs_to :reino, foreign_key: "reino_id"
end
