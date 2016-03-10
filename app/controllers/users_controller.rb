class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @current_user = @user
  end

  def after_sign_up_path_for(resource)
    redirect_to "http://www.facebook.com"
  end

end

