json.extract! articulo, :id, :nombre, :descripcion, :cantidad, :created_at, :updated_at
json.url articulo_url(articulo, format: :json)
