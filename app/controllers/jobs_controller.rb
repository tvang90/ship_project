class JobsController < ApplicationController
  def new
     @boat = Boat.find(params[:boat_id])
  end

  def index
    @jobs = Job.all
  end

  def create
    # @boat = Boat.where(boat_id: params[:id])
    @job = Job.create(job_params)
    # @job.boat_id = @boat.id

    # @job = @boat.Job.create(job_params)
    # @job.user_id = current_user.id
    if @job.save
      redirect_to boats_path
    else
      flash.now[:alert] = "Sorry, an error has occurred. Please try again"
      render :new
    end

  end

  def show
    @job = Job.find(params[:id])
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to jobs_path
  end

  private

  def job_params
    params.require(:job).permit(:name, :cargo, :cost, :origin, :destination, :boat_id)
  end
end
