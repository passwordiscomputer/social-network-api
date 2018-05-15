json.posts @posts do |post|
  json.author post.user.name
  json.author_id post.user.id
  json.post_id post.id
  json.title post.title
  json.body post.body
  json.picture post.picture
end
