class Boat < ActiveRecord::Base
  has_many :jobs, dependent: :destroy
  has_many :follows
  has_many :users, through: :follows



  def followers
    users
  end
 

  # has many users, users have many boats
  validates_uniqueness_of :name
  has_attached_file :image, styles: {large: "600x600>", medium: "300x300>", small: "150x150#" },
  default_url: "/assets/default_boat.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  
end
