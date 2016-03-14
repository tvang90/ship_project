class Boat < ActiveRecord::Base
  has_many :jobs
  # has many users, users have many boats

  has_attached_file :image, styles: {large: "600x600>", medium: "300x300>", small: "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  
end
