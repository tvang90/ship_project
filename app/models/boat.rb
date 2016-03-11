class Boat < ActiveRecord::Base
  has_many :jobs
  # has many users, users have many boats
end
