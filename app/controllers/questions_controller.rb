get '/surveys/:id/questions/new' do
  survey=Survey.find_by(id:params[:id])
  if request.xhr?
    erb :'surveys/show',locals:{survey:survey}
  else
    erb :'surveys/_surveys',locals:{survey:survey}
  end
end

post '/questions' do
  current_survey = Survey.find(params[:survey_id])
  current_q = current_survey.questions.new(question: params[:question])
  current_c=current_q.choices.new(params[:choice])

  # need to write validations for user unfilled/wacky submissions

  if current_q.save && current_c.save
    redirect "/surveys/#{params[:survey_id]}/questions/new"
  else
    erb :'questions/new'
  end
end

get '/rounds/:round_id/questions/:id' do
  question = Question.find(params[:id])
  if request.xhr?
    erb :'question/show'
  else
    erb :'questions/_question', locals: { round_id: params[:round_id], question: question }
  end
end
