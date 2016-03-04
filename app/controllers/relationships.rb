post "/relationship" do
  Relationship.create(follower_id: session[:user_id], poster_id: params[:poster].to_i)
  redirect "/users/#{params[:poster]}"
end
