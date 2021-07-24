json.extract! articulo, :id, :nombre, :detalle, :precio, :created_at, :updated_at
json.url articulo_url(articulo, format: :json)
