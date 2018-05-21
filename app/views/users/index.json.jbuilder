json.users @users do |user|
  json.name user.name
  json.user_id user.id
  json.profile_id user.profile.id
  json.email user.email
end
