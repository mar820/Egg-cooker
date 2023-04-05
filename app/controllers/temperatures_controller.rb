class TemperaturesController < ApplicationController

  def index
    @temperatures = Temperature.all
  end

  def show
    @temperature = Temperature.find(params[:id])
  end

  def new
    @temperature = Temperature.new
  end

  def create
    @temperature = Temperature.new(temperature_params)
    @temperature.ambient_temp = params[:temperature][:ambient_temp]
    if @temperature.save
      redirect_to temperatures_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def temperature_params
    params.require(:temperature).permit(:ambient_temp)
  end
end
