class Relationship < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :posters, class_name: "User", foreign_key: "poster_id"
  belongs_to :followers, class_name: "User", foreign_key: "follower_id"
end
