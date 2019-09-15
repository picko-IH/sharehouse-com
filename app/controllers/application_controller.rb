class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    
  def owner_signed_in?
    current_user.present? && current_user.admin?
  end
  
end
