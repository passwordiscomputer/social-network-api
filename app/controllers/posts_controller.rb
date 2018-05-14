class PostsController < ApplicationController


  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      #iterate through each of the files
      render :show, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def show
    @post = Post.find(params[:id])
    render :show, status: :created, location: @post
  end

  def post_params
   params.permit(:title, :body, :picture) # Add :picture as a permitted paramter
  end
end
