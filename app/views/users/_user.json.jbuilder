json.extract! user, :id, :name, :email, :phone, :address, :DoB, :created_at, :updated_at
json.url user_url(user, format: :json)
