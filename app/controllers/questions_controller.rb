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
  if request.xhr?
    erb :'question/show'
  else
    erb :'questions/_question', layout: true, locals: { round_id: params[:round_id], question: question }
  end
end
