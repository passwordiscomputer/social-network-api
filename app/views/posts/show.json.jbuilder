json.author @post.user.name
json.extract! @post, :id, :title, :body, :picture, :created_at, :updated_at
