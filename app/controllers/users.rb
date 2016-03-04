get '/users' do
end

get '/users/new' do
  #get form for new record
  erb :'/users/new'
end

get '/users/:id' do
  @user = User.find(params[:id])
  # @tweets = []
  # @user.posters.each do |poster|

  #   @tweets << Tweet.find_by(poster: poster.id)
  # end

  @tweets = []
  @user.posters.each do |poster|
    # temp = {}
    name = User.find(poster.id)
    p "$" * 50
    p name
    followed_tweets = Tweet.where(poster: poster.id)
    followed_tweets.each do |t|
      temp2 = {name: name.user_name, body: t.body}
      @tweets << temp2
    end

    # temp = {name: name.user_name, body: tweet.body}
    # @tweets << temp
  end

  erb :'/users/show'
end

post '/users' do
  #make a new record
  User.create(params[:user])
  redirect "/"
end

get '/users/:id/edit' do
  #get a form to edit a particular record
end

put '/users/:id' do
  #edit a particular record
end

delete '/users/:id' do

end
