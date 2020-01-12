class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  rescue_from AccessGranted::AccessDenied do |exception|
    redirect_to root_path, alert: "You don't have permissions to access this page."
  end
end
