get '/' do
  erb :'users/index'
end

post 'users/login' do
  @user = User.find_by(user_name: params[:user_name])
  if @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect "/users/#{user.id}"
  else
    redirect "/"
  end
end

get '/users/signup' do
  erb :'/users/new'
end

post 'users/signup' do
  User.create(params[:user])
  redirect "/"
end

get '/users' do

end

get '/users/new' do
  #get form for new record
end

get '/users/:id' do
  #get a particular record
end

post '/users' do
  #make a new record
end

get '/users/:id/edit' do
  #get a form to edit a particular record
end

put '/users/:id' do
  #edit a particular record
end

delete '/users/:id' do
  #delete a record
end
