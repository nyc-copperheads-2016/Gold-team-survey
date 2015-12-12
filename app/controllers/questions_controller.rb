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

get '/rounds/:round_id/questions/:id' do
  question = Question.find(params[:id])
  erb :'questions/show', locals: { round_id: params[:round_id], question: question }
end
