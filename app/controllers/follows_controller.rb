class FollowsController < ApplicationController
<<<<<<< HEAD
  def create
    @follower = Follow.create(follow_params)
  end

  def show
  end
   


  def destroy
    @follow = Follow.find(params[:id])
    @follow.destroy
    
  end

  private
  def follow_params 
    params.require(:follow).permit(:boat_id, :user_id)
  end 
=======
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
>>>>>>> 4d38019a54731950227c20765b07e6cfbf02b9ba
end
