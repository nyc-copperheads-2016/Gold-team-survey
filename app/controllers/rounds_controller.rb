post '/rounds/new' do
  binding.pry
  current_survey = Survey.find_by(id: params[:id])
  current_round = current_survey.rounds.create(user_id: current_user.id)
  erb :'/rounds/new', locals: { round: current_round, survey: current_survey }
end

get 'rounds/:id/show' do
end
