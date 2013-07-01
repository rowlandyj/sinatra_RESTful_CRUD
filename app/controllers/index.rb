get '/' do
  if session[:id]
    @user = User.find(session[:id])
    redirect "users/#{@user.id}"
  else
    erb :index
  end
end

get '/create' do
  @user=User.new
  erb :create
end

get '/users/:id' do |id|
  @user = User.find(id)
  @post = Post.find_by_user_id(id)
  erb :user
end

post '/create' do
  @user = User.create(params[:user])
  if @user.valid?
    redirect "users/#{@user.id}"
  else
    erb :create
  end
end

post '/' do
  @user = User.find_by_email(params[:email])
  if @user.email==params[:email] && @user.password==params[:password]
    session[:id] = @user.id
    redirect "users/#{@user.id}"
  else
    redirect "/create"
  end
end

get '/clear' do
  session.clear
  redirect '/'
end

