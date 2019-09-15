class Admin::ApplicationController < ApplicationController
  before_action :require_admin_login
  layout 'admin'
  
  private
  
  def require_admin_login
    redirect_to root_path unless owner_signed_in? 
  end

end
