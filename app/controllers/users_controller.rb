class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: [:create]
  def create
    user = User.new(user_params)
    user.save
    user.create_profile();
    render json: { message: "Profile succesfully created"}
  end

  def index
    @users = User.all
    render :index
  end

  private

  def user_params
   params.permit(:name, :email, :password, :password_confirmation) # Add :picture as a permitted paramter
  end
end
