post '/posts/:post_id/post_votes' do
  @post = Post.find(params[:post_id])
  # next line says for this post, find all of its votes and then make a new one
  @post_vote = @post.post_votes.create(params[:post_vote])
  p params
  p @post_vote

  if request.xhr?
    @post.total_votes.to_s
  else
    redirect "/posts/#{@post.id}"
  end
end