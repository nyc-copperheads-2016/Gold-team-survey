get '/choices/new' do
  erb :'choices/new'
end

post '/choices' do
  new_choices = Choice.new(question: params[:question], survey_id: params[:survey_id])
  if new_choices.save
    redirect '/'
  else
    erb :'choices/new'
  end
end