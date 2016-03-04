class Tweet < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :poster, class_name: "User"
  belongs_to :follower, class_name: "User"
end
