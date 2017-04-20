json.extract! user, :id, :email, :password, :avatar, :screen_name, :created_at, :updated_at
json.url user_url(user, format: :json)
