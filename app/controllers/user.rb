get '/users/new' do
  erb :'/user/new'
end

post '/users' do
  new_user = User.new(params[:user])
  if new_user.save
    redirect '/'
  else
    erb :'/user/new', locals: { errors: new_user.errors.full_messages }
  end
end

get '/users/:id' do
  @user = User.find_by(id: session[:user_id])
  erb :'/user/show_user'
end