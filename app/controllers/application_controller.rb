class ApplicationController < ActionController::Base
  before_action :require_login

  private
  def not_authenticated
    redirect_to login_path, alert: "Please login first"
    #render 'shared#before_login_header'
  end
end
