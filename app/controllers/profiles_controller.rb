class ProfilesController < ApplicationController
  def new
  end

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end
  
  def create
    @profile = Profile.new(profile_params)

    @profile.save
    redirect_to users_path
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])

    if @profile.update_attributes(profile_params)
      redirect_to @profile
    else
      render :edit
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:fname, :lname, :job_title)
  end
end
