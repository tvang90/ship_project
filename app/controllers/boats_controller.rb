class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def new
  end

  def create
    @boat = Boat.new(boat_params)

    @boat.save
    redirect_to boats_path
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy
    redirect_to boats_path
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :containers, :image)
  end



end
