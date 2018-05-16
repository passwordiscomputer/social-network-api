class UsersController < ApplicationController
  skip_before_action :authenticate_request
  def create
    user = User.new(user_params)
    user.save
    user.create_profile();
    render json: { message: "Profile succesfully created"}
  end

  private

  def user_params
   params.permit(:name, :email, :password, :password_confirmation) # Add :picture as a permitted paramter
  end
end
