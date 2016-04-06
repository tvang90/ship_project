class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile
  has_many :jobs
  has_many :follows
  has_many :boats, through: :follows

  

  # def follows
  #   boats
  # end

  has_attached_file :image, styles: {large: "600x600>", medium: "300x300>", small: "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/



end
