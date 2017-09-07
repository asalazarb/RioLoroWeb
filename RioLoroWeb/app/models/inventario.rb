class Inventario < ApplicationRecord
  has_many :especies
  has_one :log, foreign_key: "log_id"

end
