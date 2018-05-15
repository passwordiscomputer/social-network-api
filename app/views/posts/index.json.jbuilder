json.posts @posts do |post|
  json.author post.user.name
  json.title post.title
  json.body post.body
  json.picture post.picture
end
