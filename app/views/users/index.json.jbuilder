json.array!(@users) do |user|
  json.extract! user, :id, :email, :password, :name, :screen_name
  json.url user_url(user, format: :json)
end
