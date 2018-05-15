class FollowsController < ApplicationController
  def create
    user = User.find(params[:user_id])
    current_user.follow(user)
    render json: { success: "You are now following #{user.name} id: #{user.id}" }
  end
end
