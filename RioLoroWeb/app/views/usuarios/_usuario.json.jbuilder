json.extract! usuario, :id, :nombre, :apellido1, :apellido2, :cedula, :nombreUsuario, :password, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
