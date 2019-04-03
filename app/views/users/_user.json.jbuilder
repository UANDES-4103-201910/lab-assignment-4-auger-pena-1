json.extract! user, :id, :name, :last_name, :email, :phone, :password, :user_address, :created_at, :updated_at
json.url user_url(user, format: :json)
