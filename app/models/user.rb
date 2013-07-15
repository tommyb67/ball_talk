class User < ActiveRecord::Base
  has_and_belongs_to_many :socialplayers
  has_many :favorites
end