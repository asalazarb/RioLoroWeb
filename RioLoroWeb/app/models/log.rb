class Log < ApplicationRecord
  has_one :usuario, :accion
end
