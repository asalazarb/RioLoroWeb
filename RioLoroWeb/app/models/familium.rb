class Familium < ApplicationRecord
  belongs_to :orden, foreign_key: "orden_id"
end
