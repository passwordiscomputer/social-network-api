class PostsController < ApplicationController

  def index
    @posts = current_user.following_users.collect{|u| u.posts}.flatten.sort_by{|post| post.created_at}.reverse
    render :index
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
