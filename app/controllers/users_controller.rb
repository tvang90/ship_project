class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @current_user = @user
  end

  # def after_sign_up_path_for(resource_or_scope)
  #   redirect_to "http://www.facebook.com"
  # end

  def follow
    follows.create(boat_id: boat.id)
  end

  def unfollow
    follows.find_by(boat_id: boat.id).destroy
  end

  # def following?(boat)
  #   boat.followers.find_by(id: id).present?
  # end

end

