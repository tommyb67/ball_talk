class User < ActiveRecord::Base
  attr_accessible :user_name, :password, :email
  has_and_belongs_to_many :socialplayers
  has_many :favorites
end