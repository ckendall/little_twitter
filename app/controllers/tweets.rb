get '/tweets' do
 # display all records
end

get '/tweets/new' do
  #get form for new record
  @user_id = session[:user_id]
   erb :"/tweets/new"
end

get '/tweets/:id' do
  #get a particular record
end

post '/tweets' do
  #make a new record
  @tweet = Tweet.create(poster_id: session[:user_id], body: params[:tweet])
  redirect "/tweets/#{@tweet.id}"
end

get '/tweets/:id/edit' do
  #get a form to edit a particular record
end

put '/tweets/:id' do
  #edit a particular record
end

delete '/tweets/:id' do
  #delete a record
end
