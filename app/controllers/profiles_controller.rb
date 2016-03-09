class ProfilesController < ApplicationController
  def new
  end
  
  def create
    @profile = Profile.create
  end
end
