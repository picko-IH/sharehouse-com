class Admin::HousesController < ApplicationController
  layout 'admin'
  def index
    @houses = House.all
  end
end
