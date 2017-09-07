class Especie < ApplicationRecord
  belongs_to :reino, :orden, :familium, :clase
  
end
