class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def index
    # @eggs = Egg.all
    # @temperatures = Temperature.last
    # @room_temp = @temperatures.room_temp
    # @fridge_temp = @temperatures.fridge_temp
    # @presures = Presure.last
  end
end
