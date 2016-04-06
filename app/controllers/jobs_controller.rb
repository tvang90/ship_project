class JobsController < ApplicationController
  def new
  end

  def index
    @jobs = Job.all
  end

  def create
    @job = Job.new(job_params)

    @job.save
    redirect_to users_path
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
    params.require(:job).permit(:name, :cargo, :cost, :origin, :destination)
  end
end
