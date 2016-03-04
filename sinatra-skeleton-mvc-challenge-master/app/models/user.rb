# class User < ActiveRecord::Base
#   # Remember to create a migration!
#   has_many :tweets
#   has_many :relationships, foreign_key: "follower_id"
#   has_many :poster_relationships, class_name: "Relationship", foreign_key: "poster_id"
#   has_many :followers , through: :poster_relationships, source: :followers
#   has_many :posters , through: :relationships, source: :posters
# end

class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :tweets
  has_many :relationships, foreign_key: "follower_id"
  has_many :poster_relationships, class_name: "Relationship", foreign_key: "poster_id"
  has_many :followers , through: :poster_relationships, source: :followers
  has_many :posters , through: :relationships, source: :posters
end

