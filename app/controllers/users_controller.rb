class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @current_user = @user
  end

  def after_sign_up_path_for(resource_or_scope)
    redirect_to "http://www.facebook.com"
  end

  private
    def users_params
      params.require(:sign_up).permit(:name, :job_title, :image)
    end
 end


