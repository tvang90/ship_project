class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile
  has_many :jobs
  has_many :follows
  has_many :boats, through: :follows

   def following?(boat)
    boat.followers.find_by(id: id).present?
   end

  # def follows
  #   boats
  # end

end
