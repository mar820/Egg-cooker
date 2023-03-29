class EggsController < ApplicationController
  def index
    @eggs = Egg.all
    @temperatures = Temperature.last
    @room_temp = @temperatures.room_temp
    @fridge_temp = @temperatures.fridge_temp
    @presures = Presure.last
    @sea_level = @presures.sea_level
    @altitude = @presures.altitude
  end

  def show
    @egg = Egg.find(params[:id])
  end

  def new
    @egg = Egg.new
  end

  def create
    @egg = Egg.new(egg_params)
    @egg.size = params[:egg][:size]
    if @egg.save
      redirect_to eggs_path(@eggs)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def egg_params
    params.require(:egg).permit(:size)
  end
end
