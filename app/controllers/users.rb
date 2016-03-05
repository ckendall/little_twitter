get '/users' do
end

get '/users/new' do
  #get form for new record
  erb :'/users/new'
end

get '/users/:id' do


  @user = User.find(params[:id])

  @tweets = []
  if params[:your_tweets] && session[:user_id] == params[:id].to_i
    user_tweets = Tweet.where(poster: params[:id])
     user_tweets.each do |tweet|
        @tweets << {name: tweet.poster.user_name, body: tweet.body, poster: tweet.poster.id}
     end

  elsif session[:user_id] == params[:id].to_i
    @user.posters.each do |poster|
      name = User.find(poster.id)
      followed_tweets = Tweet.where(poster: poster.id)
      followed_tweets.each do |t|
        @tweets << {name: name.user_name, body: t.body, poster: t.poster.id}
      end
    end
  else
     user_tweets = Tweet.where(poster: params[:id])
     user_tweets.each do |tweet|
        @tweets << {name: tweet.poster.user_name, body: tweet.body, poster: tweet.poster.id}
     end
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
