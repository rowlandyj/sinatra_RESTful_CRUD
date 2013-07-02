get '/create_post' do
  @post ||= Post.new
  erb :post
end

post '/create_post' do
  @post ||= Post.create(params[:post])
  if @post.valid?
    redirect "users/post/#{@post.id}"
  else
    erb :post
  end
end

get '/users/post/#{@post.id}' do

end


