class ProfilesController < ApplicationController
  def index
    @profile = current_user.profile
    @following_posts = current_user.following_users.includes(:posts).collect{|u| u.posts}.flatten
    @following_users = current_user.following_users
    @follower_users = current_user.followers
    render :index
  end



  def update
    if current_user == User.find(params[:user_id])
      @profile = Profile.find_by(user_id: params[:user_id])
      @profile.update!(profile_params)
      render :index
    end
    render json: { error: "not authorized to make changes to that profile" }, status: :unauthorized
  end

  private

  def profile_params
   params.permit(:bio, :location, :age, :avatar) # Add :picture as a permitted paramter
  end
end
