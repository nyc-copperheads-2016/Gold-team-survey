get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  new_user = User.new(params[:user])
  if new_user.save
    redirect '/'
  else
    erb :'/users/new', locals: { errors: new_user.errors.full_messages }
  end
end

get '/users/:id/surveys' do
  current_user = User.find(session[:user_id])
  erb :'/users/surveys', locals: { creator: current_user }
end

get '/users/:id' do
  current_user = User.find(session[:user_id])
  erb :'/users/show', locals: { user: current_user }
end



