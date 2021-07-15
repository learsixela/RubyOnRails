json.extract! cliente, :id, :nombre, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
