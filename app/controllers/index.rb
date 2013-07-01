get '/' do
  erb :index
end

get '/create' do
  @user=User.new
  erb :create
end

get '/users/:id' do |id|
  @user = User.find(id)
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
