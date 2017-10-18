class Orden < ApplicationRecord
  belongs_to :clase, foreign_key: "clase_id"
end
