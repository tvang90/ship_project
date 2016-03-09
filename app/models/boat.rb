class Boat < ActiveRecord::Base

  private
  
  def boats_params
    params.require(:boat).permit(:name, :location, :containers)
  end
end
