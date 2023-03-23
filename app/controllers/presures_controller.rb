class PresuresController < ApplicationController
  def index
    @presures = Presure.last
    @sea_level = @presures.sea_level
    @altitude = @presures.altitude
  end

  def show
    @presure = Presure.find(params[:id])
  end

  def new
    @presure = Presure.new
  end

  def create
    @presure = Presure.new(presure_params)
    if @presure.save
      redirect_to presures_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def presure_params
    params.require(:presure).permit(:sea_level, :altitude)
  end
end
