get '/questions/new' do
  erb :'questions/new'
end

post '/questions' do
  new_questions = Question.new(question: params[:question], survey_id: params[:survey_id])
  if new_questions.save
    redirect '/choices/new'
  else
    erb :'questions/new'
  end
end