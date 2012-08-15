class User < ActiveRecord::Base
  attr_accessible :name, :provider, :uid
  validates :uid, presence: true
end
