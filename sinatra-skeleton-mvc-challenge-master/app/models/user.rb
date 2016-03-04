
require 'bcrypt'

class User < ActiveRecord::Base

  has_many :tweets
  has_many :relationships, foreign_key: "follower_id"
  has_many :poster_relationships, class_name: "Relationship", foreign_key: "poster_id"
  has_many :followers , through: :poster_relationships, source: :followers
  has_many :posters , through: :relationships, source: :posters

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypts::Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password)
    self.password == password
  end



#   has_many :tweets
#   has_many :relationships, foreign_key: "follower_id"
#   has_many :poster_relationships, class_name: "Relationship", foreign_key: "poster_id"
#   has_many :followers , through: :poster_relationships, source: :followers
#   has_many :posters , through: :relationships, source: :posters

end

