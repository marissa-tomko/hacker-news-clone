get '/login' do

  erb :'sessions/login'
end

post '/login' do
  @user = User.authenticate(params[:email], params[:password])

  if @user && session[:user_id] = @user.id
    redirect "/"
  else
    @errors = ["We do not recognize that login info!"]
    erb :'sessions/login'
  end

end

delete '/logout' do
  session.delete(:user_id)
  redirect '/login'
end