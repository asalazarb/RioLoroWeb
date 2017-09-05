class Inventario < ApplicationRecord
  has_many :especies
  has_one :log
  
end
