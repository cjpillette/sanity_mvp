json.extract! user, :id, :email, :password, :screen_name, :avatar, :created_at, :updated_at
json.url user_url(user, format: :json)
