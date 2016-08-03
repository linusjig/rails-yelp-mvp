json.extract! restaurant, :id, :name, :address, :description, :stars, :created_at, :updated_at, :phone_number, :category
json.url restaurant_url(restaurant, format: :json)
