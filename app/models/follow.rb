class Follow < ActiveRecord::Base
  has_many :users
  has_many :boats
end
