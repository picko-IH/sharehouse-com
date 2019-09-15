class Admin::RoomsController < Admin::ApplicationController
  before_action :set_house

  def index
    @rooms = @house.rooms
  end

  def new
    @room = @house.rooms.new
  end

  def create
    @room = @house.rooms.new(room_params)
    if @room.save
      redirect_to admin_house_rooms_path(@house), notice: "物件登録しました。"
    else
      render 'new'
    end
  end
  
  def edit
    @room = @house.rooms.find(params[:id])
  end
  
  def update
    @room = @house.rooms.find(params[:id])
    if @room.update(room_params)
      redirect_to admin_house_rooms_path(@house), notice: "編集しました。"
    else
      render 'edit'
    end
  end
  
  def destroy
    @room = @house.rooms.find(params[:id])
    if @room.destroy
      redirect_to admin_house_rooms_path(@house), notice: "削除しました。"
    end
  end

  private
    def set_house
      @house = House.find(params[:house_id])
    end
    # Rails4からStrongParamaterと呼ばれる機能が追加されました。
    # セキュリティのため、permitメソッドで許可したパラメータ名しか取得できません。
    def room_params
      params.require(:room).permit(:name, :rent, :service_fee, :other_fee, :tatami_size, :condition, {images: []})
    end
end
