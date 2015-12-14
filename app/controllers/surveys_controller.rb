get '/surveys' do
  surveys = Survey.all
  current_user = User.find(session[:user_id])
  erb :'surveys/index', locals: { surveys: surveys, user: current_user }
end

get '/surveys/new' do
  erb :'surveys/new'
end

post '/surveys' do
  new_survey = current_user.surveys.new(name: params[:name], creator: current_user)
  if new_survey.save
    redirect "/surveys/#{new_survey.id}/questions/new"
  else
    erb :'/surveys/new'
  end
end
