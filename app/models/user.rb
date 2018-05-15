class User < ApplicationRecord
  has_secure_password
  acts_as_followable
  acts_as_follower
  has_many :posts
  has_one :profile

end
