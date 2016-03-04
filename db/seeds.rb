require 'faker'

5.times do
  User.create(user_name: Faker::Name.first_name,
  email: Faker::Internet.email,
  password: "password"
  )
end

15.times do
  Tweet.create(poster_id: User.all.sample(1)[0].id, body: Faker::Lorem.sentences(1))
end

20.times do
  Relationship.create(follower_id: User.all.sample(1)[0].id, poster_id: User.all.sample(1)[0].id)
end
