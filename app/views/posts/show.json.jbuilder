json.author @post.user.name
json.extract! @post, :title, :body, :picture, :created_at, :updated_at
