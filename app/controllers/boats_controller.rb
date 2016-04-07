class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def new
    @new_boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)

    @boat.save
    redirect_to boats_path
  end

  def show
    @boat = Boat.find(params[:id])
    # @boats_jobs = @boat.boats_jobs
    # @current_user = User.find(current_user.id)
  end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy
    redirect_to boats_path
  end

  def boat_follow
    respond_to do |format|
      format.js 
    end
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :location, :containers, :image)
  end



end
