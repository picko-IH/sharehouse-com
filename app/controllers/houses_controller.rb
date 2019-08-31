class HousesController < ApplicationController
  def index
    rooms = Room.all
    rooms = rooms.where('rent >= ?', params[:min_rent]) if params[:min_rent].present?
    rooms = rooms.where('rent <= ?', params[:max_rent]) if params[:max_rent].present?
    rooms = rooms.where('gender_type <= ?', params[:gender_type]) if params[:gender_type].present?
    @houses = House.where(id: rooms.pluck(:house_id).uniq)
  end
  
  def show
    @house = House.find(params[:id])
    @rooms = @house.rooms
  end
  
  def search
    @houses = House.all
  end
end