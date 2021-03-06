class PostsController < ApplicationController

  def index
    @posts = User.find(params[:user_id]).posts
  end

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

  private

  def post_params
   params.permit(:title, :body, :picture) # Add :picture as a permitted paramter
  end
end
