class Usuario < ApplicationRecord
  has_one :tipo_usuario, foreign_key: "tipo_usuario_id"
end
