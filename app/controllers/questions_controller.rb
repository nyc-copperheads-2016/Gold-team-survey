get '/surveys/:id/questions/new' do
  survey=Survey.find_by(id:params[:id])
  if !request.xhr?
    erb :'surveys/show',locals:{survey:survey}
  else
    erb :'surveys/_surveys', locals:{survey:survey}, layout:false
  end
end

post '/questions' do
  current_survey = Survey.find(params[:survey_id])
  current_q = current_survey.questions.new(question: params[:question])
  current_c=current_q.choices.new(params[:choice])

  if current_q.save && current_c.save
    redirect "/surveys/#{params[:survey_id]}/questions/new"
  else
    @errors = current_q.errors.full_messages + current_c.errors.full_messages
    if !request.xhr?
      erb :'surveys/show',locals:{survey:current_survey }
    else
      erb :'surveys/_surveys', locals:{survey:current_survey }, layout:false
    end
  end
end

get '/rounds/:round_id/questions/:id' do
  question = Question.find(params[:id])
  if request.xhr?
    erb :'questions/_question', layout: false, locals: { round_id: params[:round_id], question: question }
  else
    erb :'questions/show', locals: { round_id: params[:round_id], question: question }
  end
end
