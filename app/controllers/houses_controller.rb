class HousesController < ApplicationController
  def index
    rooms = Room.all
    rooms = rooms.where('rent >= ?', params[:min_rent]) if params[:min_rent].present?
    rooms = rooms.where('rent <= ?', params[:max_rent]) if params[:max_rent].present?
    @houses = House.where(id: rooms.pluck(:house_id).uniq)
    @houses = @houses.send(House.gender_types.invert[params[:gender_type].to_i]) if params[:gender_type].present?
  end

  def show
    @house = House.find(params[:id])
    @rooms = @house.rooms
  end
  
  def search
    @houses = House.all
  end
end