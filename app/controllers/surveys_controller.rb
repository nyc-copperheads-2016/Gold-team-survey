get '/surveys' do
  erb :'surveys/index'
end

get '/surveys/new' do
  erb :'surveys/new'
end

post '/surveys' do
  new_survey = Survey.new(name: params[:name], creator: current_user)
  if new_survey.save
    redirect '/'
  else
    erb :'surveys/new'
  end
end