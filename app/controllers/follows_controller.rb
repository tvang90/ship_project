class FollowsController < ApplicationController
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
end
