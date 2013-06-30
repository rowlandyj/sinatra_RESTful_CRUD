get '/' do
  erb :index
end

get '/users/:id' do |id|
  @user = User.find(id)
end
