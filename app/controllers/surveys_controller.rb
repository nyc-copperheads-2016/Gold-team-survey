get '/surveys/new' do
  erb :'surveys/new'
end

post '/surveys' do
  new_survey = Survey.new(name: params[:name])
end