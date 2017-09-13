post '/posts/:post_id/post_votes' do
  @post = Post.find(params[:post_id])
  # for this post, find all of its votes and then make a new one
  @post_vote = @post.post_votes.create(params[:post_vote])

  redirect "/posts/#{@post.id}"
end