class PresuresController < ApplicationController
  def index
    @presures = Presure.all
  end

  def show
    @presure = Presure.find(params[:id])
  end

  def new
    @presure = Presure.new
  end

  def create
    @presure = Presure.new(presure_params)
    @presure.atmo_presure = params[:presure][:atmo_presure]
    if @presure.save
      redirect_to presures_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def presure_params
    params.require(:presure).permit(:atmo_presure)
  end
end
