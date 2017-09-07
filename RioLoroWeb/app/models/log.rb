class Log < ApplicationRecord
  has_one :usuario, foreign_key: "usuario_id"
  has_one :accion, foreign_key: "accion_id"
end
