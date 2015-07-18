class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  private

  def require_valid_spree_api_key!
    render json: {error: "need spree api key"} unless valid_spree_api_key?
  end

  def valid_spree_api_key?
    Spree::User.where(spree_api_key: params["token"]).length == 1
  end

end
