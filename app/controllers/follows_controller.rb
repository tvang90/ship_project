class FollowsController < ApplicationController
# before_action :logged_in_user

  def create
    @boat = Boat.find(params[:follow][:boat_id])
    current_user.follow!(@boat)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
   
  end

  def destroy
    user = Follow.find(params[:id]).followee
    current_user.unfollow(user)
    redirect_to user
  end
end
