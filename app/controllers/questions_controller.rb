get '/questions/new' do
  erb :'questions/new'
end

post '/questions' do
  current_survey = Survey.find_by(id: params[:id])
  binding.pry
  #Trying to add current_survey to the question. This saves the question to the survey. Not working
  new_question = Question.new(question: params[:question], survey_id: params[:survey_id])
  if new_question.save
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
