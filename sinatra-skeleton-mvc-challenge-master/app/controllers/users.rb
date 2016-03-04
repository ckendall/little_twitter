get '/users' do
end

get '/users/new' do
  #get form for new record
  erb :'/users/new'
end

get '/users/:id' do
  @user = User.find(params[:id])
  #get a particular record
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
