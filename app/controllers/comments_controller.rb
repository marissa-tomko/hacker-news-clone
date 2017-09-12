get '/posts/:id/comments/new' do
  @post = Post.find(params[:id])

  erb :'comments/new'
end

post '/posts/:id/comments' do
  @post = Post.find(params[:id])
  # comment doesn't need @ bc not passing into views
  # only need inst vars if loading post
  comment = @post.comments.new(params[:comment])
  comment.user = current_user

  if comment.save
    redirect "/posts/#{@post.id}"
  else
    @errors = comment.errors.full_messages
    erb :'comments/new'
  end
end

get '/users/:id/comments' do
  @user = User.find(params[:id])

  erb :'comments/user_comments'
end