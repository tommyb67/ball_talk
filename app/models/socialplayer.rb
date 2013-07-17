class Socialplayer < ActiveRecord::Base
  attr_accessible :id_str, :name, :screenname, :description
  has_and_belongs_to_many :users
  attr_accessible :name, :screenname, :description
end
