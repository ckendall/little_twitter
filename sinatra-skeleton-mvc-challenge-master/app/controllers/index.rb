get '/' do
  erb :'/users/index'
end

post '/login' do
  @user = User.find_by(user_name: params[:user_name])
  if @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    redirect "/"
  end
end

get '/logout' do
  session[:id] = nil
  redirect '/'
end
