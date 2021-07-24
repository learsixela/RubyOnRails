json.extract! proveedor, :id, :nombre, :apellido, :edad, :email, :contrasena, :created_at, :updated_at
json.url proveedor_url(proveedor, format: :json)
