class Admin::HousesController < Admin::ApplicationController
  
  def index
    @houses = House.all
    @rooms = Room.all
  end

  def new
    @house = House.new
    @room = Room.new
  end

  def create
    @house = House.new(house_params)
    if @house.save
      redirect_to admin_houses_path, notice: "物件登録しました。"
    else
      render 'new'
    end
    
    @room = Room.new(house_params)
    if @room.save
      redirect_to admin_house_rooms_path, notice: "物件登録しました。"
    else
      render 'new'
    end
  end
  
  def edit
    @house = House.find(params[:id])
    @room = Room.find(params[:id])
  end
  
  def update
    @house = House.find(params[:id])
    if @house.update(house_params)
      redirect_to admin_houses_path, notice: "編集しました。"
    else
      render 'edit'
    end
  end
  
  def destroy
    @house = House.find(params[:id])
    if @house.destroy
      redirect_to admin_houses_path, notice: "削除しました。"
    end
  end

  private
    # Rails4からStrongParamaterと呼ばれる機能が追加されました。
    # セキュリティのため、permitメソッドで許可したパラメータ名しか取得できません。
  def house_params
    params.require(:house).permit(:name, :address, :access, :description, :gender_type, {images: []})
  end

end
