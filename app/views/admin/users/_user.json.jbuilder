json.extract! user, :id, :email, :role, :status, :first_name, :last_name, :password, :password_confirmation
json.url user_url(user, format: :json)
