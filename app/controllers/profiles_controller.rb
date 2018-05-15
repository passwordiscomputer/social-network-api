class ProfilesController < ApplicationController
  def index
    @profile = Profile.find_by(user_id: params[:user_id])
    render :index
  end

  def create
    @profile = Profile.find_by(user_id: params[:user_id])
    @user = @profile.user
    current_user.follow(@user)
    render :create
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
