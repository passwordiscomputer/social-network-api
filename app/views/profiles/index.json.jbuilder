json.profile @profile, :id, :bio, :age, :location

json.posts @posts do |post|
  json.author post.user.name
  json.author_id post.user.id
  json.post_id post.id
  json.title post.title
  json.body post.body
  json.picture post.picture
end

json.following @following_users do |user|
  json.user_id user.id
  json.name user.name
end

json.followers @follower_users do |user|
  json.user_id user.id
  json.name user.name
end
