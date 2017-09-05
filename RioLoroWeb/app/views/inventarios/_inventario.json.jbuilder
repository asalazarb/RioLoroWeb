json.extract! inventario, :id, :nombre, :ubicacion, :created_at, :updated_at
json.url inventario_url(inventario, format: :json)
