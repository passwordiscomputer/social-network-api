class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound do |exception|

    render json: { error: exception.message }, status: :not_found
  end
 before_action :authenticate_request
  attr_reader :current_user
  def index
  end

  private

  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  end

end
